<?php
/**
 * PDF Form view class
 *
 * @package     Joomla
 * @subpackage  Fabrik
 * @copyright   Copyright (C) 2005-2015 fabrikar.com - All rights reserved.
 * @license     GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */

// No direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.view');
require_once JPATH_SITE . '/components/com_fabrik/views/form/view.base.php';

/**
 * PDF Form view class
 *
 * @package     Joomla
 * @subpackage  Fabrik
 * @since       3.0.6
 */
class FabrikViewForm extends FabrikViewFormBase
{
	/**
	 * Main setup routine for displaying the form/detail view
	 *
	 * @param   string $tpl template
	 *
	 * @return  void
	 */
	public function display($tpl = null)
	{
		if (!JFolder::exists(COM_FABRIK_BASE . '/libraries/dompdf'))
		{
			throw new RuntimeException('Please install the dompdf library', 404);
		}

		if (parent::display($tpl) !== false)
		{
			/** @var JDocumentpdf $document */
			$document = $this->doc;

			/** @var FabrikFEModelList $model */
			$model       = $this->getModel();
			$params      = $model->getParams();
			$size        = $params->get('pdf_size', 'A4');
			$orientation = $params->get('pdf_orientation', 'portrait');
			$document->setPaper($size, $orientation);
			$this->output();
		}
	}

	/**
	 * Set the page title
	 *
	 * @param   object $w       parent worker
	 * @param   object &$params parameters
	 *
	 * @return  void
	 */
	protected function setTitle($w, &$params)
	{
		parent::setTitle($w, $params);

		$model = $this->getModel();

		// Set the download file name based on the document title

		$layout                 = FabrikHelperHTML::getLayout('form.fabrik-pdf-title');
		$displayData         = new stdClass;
		$displayData->doc	= $this->doc;
		$displayData->model	= $this->getModel();

		$this->doc->setName($layout->render($displayData));
	}
}