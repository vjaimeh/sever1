<?php

/* display/results/value_display.twig */
class __TwigTemplate_b5fc773ac6bc88a78e9e3f175cdb0198e141c071933687d1b9697765787ccea5 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<td class=\"left ";
        echo twig_escape_filter($this->env, (isset($context["class"]) ? $context["class"] : null), "html", null, true);
        echo (((isset($context["condition_field"]) ? $context["condition_field"] : null)) ? (" condition") : (""));
        echo "\">
    ";
        // line 2
        echo (isset($context["value"]) ? $context["value"] : null);
        echo "
</td>
";
    }

    public function getTemplateName()
    {
        return "display/results/value_display.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  25 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "display/results/value_display.twig", "/opt/lampp/_app_rdsadmin/templates/display/results/value_display.twig");
    }
}
