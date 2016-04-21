package main;

import main.Pipeline.BabytreePipeline;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;

/**
 * @author code4crafter@gmail.com <br>
 */
public class BabyTreeProcessor implements PageProcessor {

    public static final String URL_LIST = "http://www\\.babytree\\.com/ask/myqa__view~mlist,tab~D,pg~\\d+";

    public static final String URL_POST = "http://www\\.babytree\\.com/ask/detail/\\d+";

    private Site site = Site.me().setRetryTimes(3).setSleepTime(3000);
    @Override
    public void process(Page page) {
        //�б�ҳ
        if (page.getUrl().regex(URL_LIST).match()) {
            page.addTargetRequests(page.getHtml().xpath("//p[@class=\"list-text\"]").links().regex(URL_POST).all());
            page.addTargetRequests(page.getHtml().links().regex(URL_LIST).all());
            //����ҳ
        } else {
            page.putField("question", page.getHtml().xpath("//h1[@itemprop='title']"));
            page.putField("answer", page.getHtml().xpath("//div[@class='answer-text']"));
           // page.putField("content", page.getHtml().xpath("//div[@id='articlebody']//div[@class='articalContent']"));
           // page.putField("date",page.getHtml().xpath("//div[@id='articlebody']//span[@class='time SG_txtc']").regex("\\((.*)\\)"));
        }
    }
    @Override
    public Site getSite() {
        return site;
    }
    public static void main(String[] args) {
        Spider.create(new BabyTreeProcessor()).addUrl("http://www.babytree.com/ask/myqa__view~mlist,tab~D,pg~1")
              //  .addPipeline(new FilePipeline("D:\\webmagic\\"))
                .addPipeline(new BabytreePipeline())
                .run();
    }
}