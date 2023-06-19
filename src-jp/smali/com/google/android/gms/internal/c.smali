.class public final Lcom/google/android/gms/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final m:J


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;

.field private final d:Ljava/lang/ref/WeakReference;

.field private final e:Lcom/google/android/gms/internal/a;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/j;

.field private h:Z

.field private final i:Landroid/view/WindowManager;

.field private final j:Landroid/os/PowerManager;

.field private final k:Landroid/app/KeyguardManager;

.field private l:Lcom/google/android/gms/internal/i;

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/c;->m:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/hd;)V
    .locals 6

    iget-object v0, p2, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->h()Lcom/google/android/gms/internal/ev;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    new-instance v5, Lcom/google/android/gms/internal/l;

    iget-object v0, p2, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ii;->h()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ev;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/c;-><init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/hd;Lcom/google/android/gms/internal/ev;Landroid/view/View;Lcom/google/android/gms/internal/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/hd;Lcom/google/android/gms/internal/ev;Landroid/view/View;Lcom/google/android/gms/internal/j;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c;->n:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c;->o:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/c;->p:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->s:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->q:Z

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/al;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/hd;->j:Lorg/json/JSONObject;

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/google/android/gms/internal/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ev;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->j:Landroid/os/PowerManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->k:Landroid/app/KeyguardManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/j;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    new-instance v1, Lcom/google/android/gms/internal/d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/d;-><init>(Lcom/google/android/gms/internal/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/j;->a(Lcom/google/android/gms/internal/k;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/j;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/c;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method protected a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 11

    const/4 v1, 0x2

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v7, "viewBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "adBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "globalVisibleBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "top"

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "bottom"

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "left"

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "top"

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "bottom"

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "left"

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "right"

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v2}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "screenDensity"

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v2

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isVisible"

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/c;->a(Landroid/view/View;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isStopped"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c;->o:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isPaused"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c;->n:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected a()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/e;-><init>(Lcom/google/android/gms/internal/c;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/i;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/i;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/j;)V
    .locals 1

    const-string v0, "http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/pj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->s:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pj;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/c;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->j:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->k:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->r:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lcom/google/android/gms/internal/j;)V
    .locals 2

    const-string v0, "/updateActiveView"

    new-instance v1, Lcom/google/android/gms/internal/f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/f;-><init>(Lcom/google/android/gms/internal/c;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/activeViewPingSent"

    new-instance v1, Lcom/google/android/gms/internal/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/g;-><init>(Lcom/google/android/gms/internal/c;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/visibilityChanged"

    new-instance v1, Lcom/google/android/gms/internal/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/h;-><init>(Lcom/google/android/gms/internal/c;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v0, "/viewabilityChanged"

    sget-object v1, Lcom/google/android/gms/internal/ar;->a:Lcom/google/android/gms/internal/bb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    return-void
.end method

.method protected b(Z)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->q:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-eqz p1, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/c;->p:J

    sget-wide v6, Lcom/google/android/gms/internal/c;->m:J

    add-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-lez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/c;->p:J

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hd;

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->c()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/c;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->d()V

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public c()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->q:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untracked ad unit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "JSON Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ig;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected c(Lcom/google/android/gms/internal/j;)V
    .locals 1

    const-string v0, "/viewabilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/j;->b(Ljava/lang/String;)V

    const-string v0, "/visibilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/j;->b(Ljava/lang/String;)V

    const-string v0, "/activeViewPingSent"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/j;->b(Ljava/lang/String;)V

    const-string v0, "/updateActiveView"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/i;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/i;->a(Lcom/google/android/gms/internal/c;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->q:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected h()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/a;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected i()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "doneReasonCode"

    const-string v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    invoke-interface {v0}, Lcom/google/android/gms/internal/j;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    invoke-interface {v0}, Lcom/google/android/gms/internal/j;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/j;

    invoke-interface {v0}, Lcom/google/android/gms/internal/j;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V

    return-void
.end method
