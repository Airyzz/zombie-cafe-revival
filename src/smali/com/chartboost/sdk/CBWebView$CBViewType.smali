.class public final enum Lcom/chartboost/sdk/CBWebView$CBViewType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

.field public static final enum CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

.field private static final synthetic ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "CBViewTypeInterstitial"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/CBWebView$CBViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "CBViewTypeMoreApps"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/CBWebView$CBViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/CBWebView$CBViewType;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/CBWebView$CBViewType;
    .locals 1

    const-class v0, Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/CBWebView$CBViewType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewType;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
