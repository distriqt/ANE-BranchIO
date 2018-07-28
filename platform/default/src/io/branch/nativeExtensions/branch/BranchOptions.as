/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * @brief  		
 * @author 		marchbold
 * @created		28/7/18
 * @copyright	http://distriqt.com/copyright/license.txt
 */
package io.branch.nativeExtensions.branch 
{
	
	/**
	 * This class defines setup options for the Branch instance and session
	 */
    public class BranchOptions 
    {
 		////////////////////////////////////////////////////////
        //  CONSTANTS
        //
        
        private static const TAG : String = "BranchOptions";
        
        
 		////////////////////////////////////////////////////////
        //  VARIABLES
        //
	
		/**
		 * If true then the Branch SDK will use the test key.
		 * You should not do this for production apps.
		 */
		public var useTestKey:Boolean = false;
	
		
		/**
		 * iOS only
		 *
		 * Allows Branch to track Apple Search Ads deep linking analytics.
		 *
		 * Analytics from Apple's API have been slow which will make our analytics lower.
		 * Additionally, Apple's API does not send us all the data of an ad every time
		 * which will make ads tracked by us to show a generic campaign sometimes.
		 */
		public var delayInitToCheckForSearchAds:Boolean = false;
		
		

 		////////////////////////////////////////////////////////
        //  FUNCTIONALITY
        //
        
        public function BranchOptions()
        {
        }
	
	
		/**
		 * Sets whether your app will use the Branch test key.
		 *
		 * @param useTestKey
		 *
		 * @return	The instance of BranchOptions for chaining
		 *
		 * @see #useTestKey
		 */
		public function setUseTestKey( useTestKey:Boolean=true ):BranchOptions
		{
			this.useTestKey = useTestKey;
			return this;
		}
	
	
		/**
		 * Sets whether your app will delay initialisation to check for search ads on iOS
		 *
		 * @param delay
		 *
		 * @return The instance of BranchOptions for chaining
		 *
		 * @see #delayInitToCheckForSearchAds
		 */
		public function setDelayInitToCheckForSearchAds( delay:Boolean=true ):BranchOptions
		{
			delayInitToCheckForSearchAds = delay;
			return this;
		}
		
		
        
    }
}
