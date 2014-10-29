walletApp.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise("/");

  alerts = {
    templateUrl: "partials/alerts"
    controller: "AlertsCtrl"
  }
  
  top =  {
    templateUrl: "partials/top"
    controller: "TopCtrl"
  }
  
  navigation =  {
    templateUrl: "partials/navigation"
    controller: "NavigationCtrl"
  }
  
  settingsNavigation = {
    templateUrl: "partials/settings/navigation"
    controller: "SettingsNavigationCtrl"
  }
  
  $stateProvider.state("dashboard",
    url: "/"
    views: {
      navigation: navigation,
      alerts: alerts,
      top : top,
      left: { 
        templateUrl: "partials/accounts-navigation"
        controller: "AccountsPaymentRequestsCtrl"
      },
      right: { 
        templateUrl: "partials/dashboard"
        controller: "DashboardCtrl"
      }
    }
  )
  
  $stateProvider.state("transactions",
    url: "/transactions/:accountIndex"
    views: {
      navigation: navigation,
      alerts: alerts,
      top: top,
      left: { 
        templateUrl: "partials/accounts-navigation"
        controller: "AccountsPaymentRequestsCtrl"
      },
      right: {
        templateUrl: "partials/transactions"
        controller: "TransactionsCtrl"
      }
    }
  )
  
  $stateProvider.state("settings",  
    url: "/settings"
    views: {
      navigation: navigation,
      alerts: alerts,
      left: settingsNavigation
      right: {
        controller: "SettingsCtrl"
        templateUrl: "partials/settings/settings"
      }
    }
  ) 
  .state("settings.my-details",
    url: "/my-details"
    views: {
      settings: {
        templateUrl: "partials/settings/my-details"
        controller: "SettingsMyDetailsCtrl"
      }
    }
  )
  .state("settings.wallet",
    url: "/wallet"
    views: {
      settings: {
        templateUrl: "partials/settings/wallet"
        controller: "SettingsWalletCtrl"
      }
    }
  )
  .state("settings.addresses",
    url: "/addresses"
    views: {
      settings: {
        templateUrl: "partials/settings/addresses"
        controller: "SettingsAddressesCtrl"
      }
    }
  )
  .state("settings.security-center",
    url: "/security-center"
    views: {
      settings: {
        templateUrl: "partials/settings/security-center"
        controller: "SettingsSecurityCenterCtrl"
      }
    }
  )
  .state("settings.wallet-recovery",
    url: "/wallet-recovery"
    views: {
      settings: {
        templateUrl: "partials/settings/wallet-recovery"
        controller: "SettingsWalletRecoveryCtrl"
      }
    }
  )
  .state("settings.advanced",
    url: "/advanced"
    views: {
      settings: {
        templateUrl: "partials/settings/advanced"
        controller: "SettingsAdvancedCtrl"
      }
    }
  )