@isTest
public class RankHandlerTest {
    @isTest
    private static void test1() {
        RankHandler r1 = new RankHandler();
        string p1 = r1.rankPrize(1);
        system.assertEquals('Gold', p1);
        string p2 = r1.rankPrize(2);
        system.assertEquals('Silver', p2);
        string p3 = r1.rankPrize(3);
        system.assertEquals('Bronze', p3);
        string p4 = r1.rankPrize(6);
        system.assertEquals('You are in top 10.', p4);
        string p5 = r1.rankPrize(60);
        system.assertEquals('Participation certificate.', p5);
    }
}