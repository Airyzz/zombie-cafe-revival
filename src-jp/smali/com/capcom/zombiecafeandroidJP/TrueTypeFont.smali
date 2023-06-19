.class public Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;


# instance fields
.field private final c:Lcom/capcom/zombiecafeandroidJP/x;

.field private final d:Landroid/graphics/Typeface;

.field private final e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CapcomTrueTypeFont"

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->b:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->initTrueTypeFont()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/capcom/zombiecafeandroidJP/x;Landroid/graphics/Typeface;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->d:Landroid/graphics/Typeface;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->f:I

    iput v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->g:I

    iput v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->h:I

    iput v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->i:F

    iput v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->k:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->l:I

    iput v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->m:I

    return-void
.end method

.method private doDrawString(Ljava/lang/String;IIZZII)Landroid/graphics/Bitmap;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    move/from16 v0, p2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getAscent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v2, v2, p3

    int-to-float v2, v2

    move/from16 v0, p6

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v9, v3, v4

    move/from16 v0, p7

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v10, v3, v4

    const/4 v3, 0x0

    add-float v5, v1, v3

    const/4 v1, 0x0

    sub-float v4, v2, v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v13, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v13

    :goto_0
    if-lt v6, v7, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v1, v5

    const/4 v2, 0x0

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getDescent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v2, 0x0

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v5, v1

    invoke-direct {p0, v4}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v5}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->nextPowerOfTwo(I)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iput v4, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->l:I

    iput v5, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->m:I

    return-object v6

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getTextHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float/2addr v3, v1

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v12, Lcom/capcom/zombiecafeandroidJP/w;

    invoke-direct {v12, p0, v11, v4, v3}, Lcom/capcom/zombiecafeandroidJP/w;-><init>(Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;CFF)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v11}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getCharWidth(C)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v9, 0x0

    if-eqz p4, :cond_5

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/capcom/zombiecafeandroidJP/w;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/capcom/zombiecafeandroidJP/w;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/w;->b()F

    move-result v2

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/w;->a()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    move v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/capcom/zombiecafeandroidJP/w;

    iget-object v10, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10, v2, v9}, Lcom/capcom/zombiecafeandroidJP/w;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public static declared-synchronized getInstance(Landroid/content/res/AssetManager;Ljava/lang/String;I)Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;
    .locals 5

    const-class v1, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInstance 1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/capcom/zombiecafeandroidJP/x;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/capcom/zombiecafeandroidJP/x;-><init>(Lcom/capcom/zombiecafeandroidJP/x;)V

    iput-object p1, v2, Lcom/capcom/zombiecafeandroidJP/x;->a:Ljava/lang/String;

    iput p2, v2, Lcom/capcom/zombiecafeandroidJP/x;->b:I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

    if-nez v0, :cond_0

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;-><init>(Lcom/capcom/zombiecafeandroidJP/x;Landroid/graphics/Typeface;)V

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInstance new: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInstance 2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initTrueTypeFont()V
.end method

.method private nextPowerOfTwo(I)I
    .locals 1

    const/4 v0, 0x2

    :goto_0
    if-lt v0, p1, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static rgba(FFFF)I
    .locals 5

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, p0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    mul-float v1, p1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    mul-float v2, p2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v3, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public drawString(Ljava/lang/String;IIZZII)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->doDrawString(Ljava/lang/String;IIZZII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalize 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    iget v2, v2, Lcom/capcom/zombiecafeandroidJP/x;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalize 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->c:Lcom/capcom/zombiecafeandroidJP/x;

    iget v2, v2, Lcom/capcom/zombiecafeandroidJP/x;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAscent()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCharWidth(C)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v1, v4, [C

    aput-char p1, v1, v0

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    if-lez v1, :cond_0

    int-to-float v1, v0

    aget v0, v2, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->i:F

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public getDescent()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDrawnHeight()I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->m:I

    return v0
.end method

.method public getDrawnWidth()I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->l:I

    return v0
.end method

.method public getLeading()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getStringWidth(Ljava/lang/String;II)I
    .locals 4

    if-gez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_0
    if-le p2, p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStringWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->i:F

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStringWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTextHeight()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getUnitsPerEm()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method public setColor(FFFF)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->rgba(FFFF)I

    move-result v0

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->f:I

    return-void
.end method

.method public setEdge(IFFFF)V
    .locals 1

    iput p1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->g:I

    invoke-static {p2, p3, p4, p5}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->rgba(FFFF)I

    move-result v0

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->h:I

    return-void
.end method

.method public setPadding(FF)V
    .locals 0

    iput p1, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->i:F

    iput p2, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->j:F

    return-void
.end method

.method public setShadow(FFFFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-static {p4, p5, p6, p7}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->rgba(FFFF)I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->k:F

    return-void
.end method
