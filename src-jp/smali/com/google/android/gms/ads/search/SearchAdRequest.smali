.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final a:Lcom/google/android/gms/internal/ah;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final n:I

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ah;->a:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->c:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->e:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->f:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->g:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->h:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->i:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->k:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->m:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->n:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->o:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/gms/internal/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    return-object v0
.end method

.method public getAnchorTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->b:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->c:I

    return v0
.end method

.method public getBackgroundGradientBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->d:I

    return v0
.end method

.method public getBackgroundGradientTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->e:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->f:I

    return v0
.end method

.method public getBorderThickness()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->g:I

    return v0
.end method

.method public getBorderType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->h:I

    return v0
.end method

.method public getCallButtonColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->i:I

    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ah;->c(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->k:I

    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->m:I

    return v0
.end method

.method public getHeaderTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->n:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ah;->e()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ah;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ah;->b(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ah;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
