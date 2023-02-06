using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Projekat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekat.Logic
{
    public class RoleActions
    {
        internal void DodajAdmina()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var roleStore = new RoleStore<IdentityRole>(context);

            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            if (!roleMgr.RoleExists("canEdit"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "canEdit" });
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "ed@admin.com",
                Email = "ed@admin.com"
            };
            IdUserResult = userMgr.Create(appUser, "bembara1!");

            if (!userMgr.IsInRole(userMgr.FindByEmail("ed@admin.com").Id, "canEdit"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("ed@admin.com").Id, "canEdit");
            }
        }
    }
}