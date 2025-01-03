<?php

/**
 * Joomla! component MageBridge
 *
 * @author Yireo (info@yireo.com)
 * @package MageBridge
 * @copyright Copyright 2016
 * @license GNU Public License
 * @link https://www.yireo.com
 */

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

// Require the parent view
require_once JPATH_COMPONENT.'/view.php';

/**
 * HTML View class
 */
class MageBridgeViewUrl extends YireoViewItem
{
    /**
     * Method to prepare the content for display
     *
     * @param string $tpl
     * @return null
     */
    public function display($tpl = null)
    {
        // Fetch this item
        $this->fetchItem();

        // Build the fields
        $this->lists['source_type'] = $this->getFieldSourceType($this->item->source_type);

        parent::display($tpl);
    }

    /**
     * Get the HTML-field for the source type setting
     *
     * @param null
     * @return string
     */
    public function getFieldSourceType($current = null)
    {
        $options = [
            [ 'value' => 0, 'text' => Text::_('COM_MAGEBRIDGE_VIEW_URLS_MAGENTO_URL')],
            [ 'value' => 1, 'text' => Text::_('COM_MAGEBRIDGE_VIEW_URLS_PARTIAL_MATCH')],
        ];
        return HTMLHelper::_('select.genericlist', $options, 'source_type', null, 'value', 'text', $current);
    }
}
