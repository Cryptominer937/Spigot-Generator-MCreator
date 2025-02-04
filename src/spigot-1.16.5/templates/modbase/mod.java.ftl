<#-- @formatter:off -->
/*
 *    MCreator note:
 *
 *    If you lock base mod element files, you can edit this file and the proxy files
 *    and they won't get overwritten. If you change your mod package or modid, you
 *    need to apply these changes to this file MANUALLY.
 *
 *
 *    If you do not lock base mod element files in Workspace settings, this file
 *    will be REGENERATED on each build.
 *
 */

package ${package};

import org.bukkit.plugin.java.JavaPlugin;

public class ${JavaModName} extends JavaPlugin {

  @Override
  public void onEnable() {
    // Commands
    <#list w.getElementsOfType("command") as command>
		this.getCommand("${command.getGeneratableElement().commandName}").setExecutor(new ${command}());
    </#list>

	// Procedures
	<#list w.getElementsOfType("procedure") as procedure>
		getServer().getPluginManager().registerEvents(new ${procedure.getName()}Procedure(), this);
    </#list>
  }

  @Override
  public void onDisable() {
  }
}
<#-- @formatter:on -->
