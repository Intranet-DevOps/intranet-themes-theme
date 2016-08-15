<#list nav_items as nav_item>
	<#assign nav_item_attr_selected = "" />

	<#if nav_item.isSelected()>
		<#assign nav_item_attr_selected = "active" /> 
	</#if>

	<li class="${nav_item_attr_selected} treeview" id="layout_${nav_item.getLayoutId()}">
	
		<a href="${nav_item.getURL()}" ${nav_item.getTarget()}>
			<i class="fa fa-dashboard"></i> <span>${nav_item.getName()}</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
		</a>

		<#if nav_item.hasChildren()>
			<ul class="treeview-menu">
				<#list nav_item.getChildren() as nav_child>
					<#assign nav_child_attr_selected = "" />
					<#assign nav_child_css_class = "" />

					<#if nav_item.isSelected()>
						<#assign nav_child_attr_selected = "aria-selected='true'" />
						<#assign nav_child_css_class = "selected" />
					</#if>

					<li class="${nav_child_attr_selected}" id="layout_${nav_child.getLayoutId()}">
						<a href="${nav_child.getURL()}" ${nav_child.getTarget()}>
							<i class="fa fa-circle-o"></i> 
								${nav_child.getName()}
						</a>
					</li>
				</#list>
			</ul>
		</#if>
	</li>
</#list>
	