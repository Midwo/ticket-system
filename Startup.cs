using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Praca_Inz_Michal_Dwojak.Startup))]
namespace Praca_Inz_Michal_Dwojak
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
