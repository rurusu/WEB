using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FBTEST.Startup))]
namespace FBTEST
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
