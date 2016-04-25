package main;

import main.Pipeline.BabytreeTopicContentPipeline;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;
import us.codecraft.webmagic.processor.PageProcessor;

public class BabyTreeTopicContentProcessor  implements PageProcessor{

	

    public static final String URL_LIST = "http://www\\.babytree\\.com/community/top/topic\\.php";


    public static final String URL_POST = "http://www\\.babytree\\.com/community/\\w+/topic_\\w+\\.html";

    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000);
    @Override
    public void process(Page page) {

        if (page.getUrl().regex(URL_LIST).match()) {
            page.addTargetRequests(page.getHtml().xpath("//a[@href]").links().regex(URL_POST).all());
          //  page.addTargetRequests(page.getHtml().links().regex(URL_LIST).all());
        } else {
        	  page.putField("title", page.getHtml().xpath("//h1"));
        	  page.putField("topic_content", page.getHtml().xpath("//p[@id='topic_content']"));
        	  page.putField("babytreevote", page.getHtml().xpath("//babytreevote"));
        	  page.putField("DivHbbs", page.getHtml().xpath("//table[@id='DivHbbs']"));
        }
    }
    @Override
    public Site getSite() {
        return site;
    }
    public static void main(String[] args) {
        Spider.create(new BabyTreeTopicContentProcessor()).addUrl("http://www.babytree.com/community/top/topic.php")
                .addPipeline(new ConsolePipeline())
                .addPipeline(new BabytreeTopicContentPipeline())
                .run();
    }
}
