.class synthetic Lcom/amazon/inapp/purchasing/KiwiResponseHandler$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->values()[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$1;->$SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I

    :try_start_0
    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$1;->$SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType:[I

    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
