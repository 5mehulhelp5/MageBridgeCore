<?php

/**
 * Joomla! component MageBridge
 *
 * @author    Yireo (info@yireo.com)
 * @package   MageBridge
 * @copyright Copyright 2016
 * @license   GNU Public License
 * @link      https://www.yireo.com
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

/**
 * MageBridge Usergroup model
 */
class MagebridgeModelUsergroup extends YireoModel
{
    /**
     * Constructor method
     */
    public function __construct()
    {
        $this->_orderby_title = 'description';
        parent::__construct('usergroup');
    }
}
