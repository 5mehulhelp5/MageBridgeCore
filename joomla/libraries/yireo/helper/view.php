<?php

/*
 * Joomla! Yireo Library
 *
 * @author Yireo (info@yireo.com)
 * @package YireoLib
 * @copyright Copyright 2015
 * @license GNU Public License
 * @link http://www.yireo.com
 * @version 0.6.0
 */

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

/**
 * Yireo View Helper
 */
class YireoHelperView
{
    /*
     * Helper method to return a select-list
     *
     * @access public
     * @subpackage Yireo
     * @param
     * @return array
     */
    public static function getSelectList($name, $options, $value = null, $js = false, $selectNone = true, $multipleSelect = false)
    {
        // Add a select-none option
        if ($selectNone) {
            if (is_bool($selectNone) || is_numeric($selectNone)) {
                $selectNone = '';
            } else {
                $selectNone = '- ' . $selectNone . ' -';
            }
            array_unshift($options, ['value' => '', 'title' => $selectNone]);
        }

        // Construct the attributes
        $attributes = [];
        if ($js == true) {
            $attributes[] = 'onchange="document.adminForm.submit();"';
        }
        if ($multipleSelect == true) {
            $multipleSelect = (int)$multipleSelect;
            if ($multipleSelect == 1) {
                $multipleSelect = 4;
            }
            if ($multipleSelect < count($options) && count($options) < 20) {
                $multipleSelect = count($options);
            }
            $attributes[] = 'multiple="multiple" size="' . $multipleSelect . '"';
        }

        // Return the select-box
        return HTMLHelper::_('select.genericlist', $options, $name, implode(' ', $attributes), 'value', 'title', $value);
    }

    /*
     * Helper method to return select-options
     *
     * @access public
     * @subpackage Yireo
     * @param
     * @return array
     */
    public static function getSelectOptions($items, $value = 'id', $title = 'title', $alt_title = 'name')
    {
        $options = [];
        if (!empty($items)) {
            foreach ($items as $item) {
                if (!empty($title) && isset($item->$value) && !empty($item->$title)) {
                    $option = ['value' => $item->$value, 'title' => $item->$title];
                } elseif (!empty($alt_title) && isset($item->$value) && !empty($item->$alt_title)) {
                    $option = ['value' => $item->$value, 'title' => $item->$alt_title];
                } elseif (empty($title) || (isset($item->$value) && !isset($item->$title))) {
                    $option = ['value' => $item->$value, 'title' => $item->$value];
                }

                if (isset($item->published) && $item->published == 0) {
                    $option['disable'] = 1;
                }
                $options[] = $option;
            }
        }
        return $options;
    }

    /*
     * Helper method to trim text
     *
     * @access public
     * @subpackage Yireo
     * @param
     * @return array
     */
    public static function trim($text)
    {
        $text = trim($text);
        $text = preg_replace('/^\<p\>\&nbsp\;\<\/p\>/', '', $text);
        $text = preg_replace('/\<p\>\&nbsp\;\<\/p\>$/', '', $text);
        return $text;
    }

    /*
     * Add the AJAX-script to the page
     *
     * @access public
     * @subpackage Yireo
     * @param string $url
     * @param string $div
     * @return null
     */
    public static function ajax($url = null, $div = null)
    {
        /** @var \Joomla\CMS\Document\HtmlDocument */
        $document = Factory::getDocument();
        if (stristr(get_class($document), 'html') == false) {
            return false;
        }

        YireoHelper::jquery();
        $script = "<script type=\"text/javascript\">\n"
            . "jQuery(document).ready(function() {\n"
            . "    var MBajax = jQuery.ajax({\n"
            . "        url: '" . $url . "', \n"
            . "        method: 'get', \n"
            . "        success: function(result){\n"
            . "            if (result == '') {\n"
            . "                alert('Empty result');\n"
            . "            } else {\n"
            . "                jQuery('#" . $div . "').html(result);\n"
            . "            }\n"
            . "        }\n"
            . "    });\n"
            . "});\n"
            . "</script>";

        $document->addCustomTag($script);
    }
}
