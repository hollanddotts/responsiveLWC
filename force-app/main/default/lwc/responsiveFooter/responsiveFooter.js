import { LightningElement } from 'lwc';
import FacebookIcon from '@salesforce/resourceUrl/FacebookIcon';
import SalesforceIcon from '@salesforce/resourceUrl/SalesforceIcon';
import YoutubeIcon from '@salesforce/resourceUrl/YoutubeIcon';
import LinkedinkIcon from '@salesforce/resourceUrl/LinkedinIcon';
import TwitterIcon from '@salesforce/resourceUrl/TwitterIcon';

export default class ResponsiveFooter extends LightningElement {
    FacebookIconUrl = FacebookIcon;
    SalesforceIconUrl =SalesforceIcon;
    YoutubeIconUrl = YoutubeIcon;
    LinkedinkIconUrl = LinkedinkIcon;
    TwitterIconUrl = TwitterIcon;


}