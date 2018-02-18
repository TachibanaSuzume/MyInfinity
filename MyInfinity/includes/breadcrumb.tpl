{foreach $breadcrumb as $item}
	{if $item@last}{/if}
		{if !$item@last}{/if}
		{$item.label}
		{if !$item@last}>{/if}
{/foreach}
