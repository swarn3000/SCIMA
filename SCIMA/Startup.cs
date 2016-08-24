using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SCIMA.Startup))]
namespace SCIMA
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
