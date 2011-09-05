<ul id="easy_themes" class="easytheme_level_1 <?php echo $this->class; ?>">
<?php foreach($this->themes as $arrTheme): ?>
    <li class="easytheme_level_1_group"><a class="navigation" href="<?php echo $arrTheme['href']; ?>" title="<?php echo $arrTheme['title']; ?>"><?php echo $arrTheme['label']; ?></a>
		<ul class="easytheme_level_2">
		<?php foreach($arrTheme['modules'] as $arrModule): ?>
			<li class="easytheme_level_2_link"><a class="navigation" title="<?php echo $arrModule['title']; ?>" href="<?php echo $arrModule['href']; ?>"><span class="icon"><?php echo $arrModule['img']; ?></span><?php if(!$this->short) echo ' ', $arrModule['label']; ?></a></li>
		<?php endforeach; ?>
		</ul>
	</li>
<?php endforeach; ?>
</ul>

<script>
window.addEvent('domready', function()
{
	new EasyThemes({
		handle: $$('#tl_navigation a.themes')[0].getParent('li'),
		container: $('easy_themes'),
		mode: '<?php echo $this->mode; ?>'
	});
});
</script>