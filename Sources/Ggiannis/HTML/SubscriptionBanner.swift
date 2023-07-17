//
// Created by Ioannis Giannopoulos on 17.07.23.
//

import Foundation
import Plot

struct SubscriptionBanner: Component {
    private let message: String = "Subscribe for new insights and personal stories."

    var body: Component {
        Node<HTML.DocumentContext>.raw(
            """
            <div class="subscription_banner">
                <div id="mailchimp_subscribe_form">
                    <form action="https://ggiannis.us12.list-manage.com/subscribe/post?u=6ce7c5413ed35ed11c9d364f7&amp;id=447abcf157&amp;f_id=00a145e0f0" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">
                        <div id="mc_embed_signup_scroll">
                            <div>
                                <label for="mailchimp_email">\(message)</p>
                                <input type="email" name="EMAIL" class="required email" id="mce-EMAIL" required="" value="">
                                <span id="mce-EMAIL-HELPERTEXT"></span>
                            </div>
                            <div class="optionalParent">
                                <div class="clear foot">
                                    <input type="submit" name="subscribe" id="mc-embedded-subscribe" class="button" value="Subscribe">
                                </div>
                            </div>
                            <div id="mce-responses" class="clear foot">
                                <div class="response" id="mce-error-response" style="display: none;"></div>
                                <div class="response" id="mce-success-response" style="display: none;"></div>
                            </div>
                            <div aria-hidden="true" style="position: absolute; left: -5000px;">
                            /* real people should not fill this in and expect good things - do not remove this or risk form bot signups */
                                <input type="text" name="b_6ce7c5413ed35ed11c9d364f7_447abcf157" tabindex="-1" value="">
                            </div>
                        </div>
                    </form>
                </div>
                <script type="text/javascript" src="//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js"></script>
                <script type="text/javascript">
                    (function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]=EMAIL;ftypes[0]=merge;fnames[1]=FNAME;ftypes[1]=merge;fnames[2]=LNAME;ftypes[2]=merge;fnames[3]=ADDRESS;ftypes[3]=merge;fnames[4]=PHONE;ftypes[4]=merge;fnames[5]=BIRTHDAY;ftypes[5]=merge;false}(jQuery));var $mcj = jQuery.noConflict(true);
                </script>
            </div>
            """
        )
    }
}
