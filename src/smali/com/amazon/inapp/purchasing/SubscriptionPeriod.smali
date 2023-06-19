.class public final Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, startDate: \"%s\", endDate: \"%s\")"


# instance fields
.field final _endDate:Ljava/util/Date;

.field final _startDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_startDate:Ljava/util/Date;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_endDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_endDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_startDate:Ljava/util/Date;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, startDate: \"%s\", endDate: \"%s\")"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_startDate:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->_endDate:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
