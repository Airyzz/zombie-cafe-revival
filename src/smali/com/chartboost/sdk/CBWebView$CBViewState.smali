.class public final enum Lcom/chartboost/sdk/CBWebView$CBViewState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field public static final enum CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field public static final enum CBViewStateWaitingForDismissal:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field public static final enum CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field private static final synthetic ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    const-string v1, "CBViewStateOther"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/CBWebView$CBViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    const-string v1, "CBViewStateWaitingForDisplay"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/CBWebView$CBViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    const-string v1, "CBViewStateDisplayedByDefaultController"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/CBWebView$CBViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    new-instance v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    const-string v1, "CBViewStateWaitingForDismissal"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/CBWebView$CBViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDismissal:Lcom/chartboost/sdk/CBWebView$CBViewState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/CBWebView$CBViewState;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDismissal:Lcom/chartboost/sdk/CBWebView$CBViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/CBWebView$CBViewState;
    .locals 1

    const-class v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/CBWebView$CBViewState;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/CBWebView$CBViewState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->ENUM$VALUES:[Lcom/chartboost/sdk/CBWebView$CBViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
