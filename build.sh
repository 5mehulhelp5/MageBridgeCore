#!/usr/bin/env bash

set -euo pipefail

pwd=$(dirname "$0")
output_file=${pwd}/dist/pkg_magebridge.zip

php ${pwd}/bundle.php ${pwd}/joomla/libraries/yireo/yireo.xml ${pwd}/joomla/packages/lib_yireo.zip
php ${pwd}/bundle.php ${pwd}/joomla/com_magebridge.xml ${pwd}/joomla/packages/com_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_block/mod_magebridge_block.xml ${pwd}/joomla/packages/mod_magebridge_block.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_cart/mod_magebridge_cart.xml ${pwd}/joomla/packages/mod_magebridge_cart.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_cms/mod_magebridge_cms.xml ${pwd}/joomla/packages/mod_magebridge_cms.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_login/mod_magebridge_login.xml ${pwd}/joomla/packages/mod_magebridge_login.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_menu/mod_magebridge_menu.xml ${pwd}/joomla/packages/mod_magebridge_menu.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_newsletter/mod_magebridge_newsletter.xml ${pwd}/joomla/packages/mod_magebridge_newsletter.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_progress/mod_magebridge_progress.xml ${pwd}/joomla/packages/mod_magebridge_progress.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_switcher/mod_magebridge_switcher.xml ${pwd}/joomla/packages/mod_magebridge_switcher.zip
php ${pwd}/bundle.php ${pwd}/joomla/modules/mod_magebridge_widget/mod_magebridge_widget.xml ${pwd}/joomla/packages/mod_magebridge_widget.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/authentication/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_authentication_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/community/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_community_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/content/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_content_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/finder/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_finder_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridge/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_magebridge_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgenewsletter/example/example.xml ${pwd}/joomla/packages/plg_magebridgenewsletter_example.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgeproduct/example/example.xml ${pwd}/joomla/packages/plg_magebridgeproduct_example.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgestore/example/example.xml ${pwd}/joomla/packages/plg_magebridgestore_example.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgestore/falang/falang.xml ${pwd}/joomla/packages/plg_magebridgestore_falang.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgestore/joomfish/joomfish.xml ${pwd}/joomla/packages/plg_magebridgestore_joomfish.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgestore/joomla/joomla.xml ${pwd}/joomla/packages/plg_magebridgestore_joomla.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magebridgestore/nooku/nooku.xml ${pwd}/joomla/packages/plg_magebridgestore_nooku.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/magento/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_magento_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/search/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_search_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_system_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgepositions/magebridgepositions.xml ${pwd}/joomla/packages/plg_system_magebridgepositions.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgepre/magebridgepre.xml ${pwd}/joomla/packages/plg_system_magebridgepre.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgert/magebridgert.xml ${pwd}/joomla/packages/plg_system_magebridgert.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgesample/magebridgesample.xml ${pwd}/joomla/packages/plg_system_magebridgesample.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridget3/magebridget3.xml ${pwd}/joomla/packages/plg_system_magebridget3.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgeyoo/magebridgeyoo.xml ${pwd}/joomla/packages/plg_system_magebridgeyoo.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/system/magebridgezoo/magebridgezoo.xml ${pwd}/joomla/packages/plg_system_magebridgezoo.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/user/magebridge/magebridge.xml ${pwd}/joomla/packages/plg_user_magebridge.zip
php ${pwd}/bundle.php ${pwd}/joomla/plugins/user/magebridgefirstlast/magebridgefirstlast.xml ${pwd}/joomla/packages/plg_user_magebridgefirstlast.zip
php ${pwd}/bundle.php ${pwd}/joomla/templates/magebridge_root/templateDetails.xml ${pwd}/joomla/packages/tpl_magebridge_root.zip
php ${pwd}/bundle.php ${pwd}/joomla/pkg_magebridge.xml ${output_file}

rm -rf ${pwd}/joomla/packages

echo ""
echo "Created ${output_file}"