.class Lcom/capcom/zombiecafeandroidJP/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

.field private final b:C

.field private final c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;CFF)V
    .locals 1

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/w;->a:Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p2, p0, Lcom/capcom/zombiecafeandroidJP/w;->b:C

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [C

    iget-char v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->b:C

    aput-char v0, v1, v2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float v4, v0, p3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v5, v0, p4

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()F
    .locals 2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/w;->a:Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;

    iget-char v1, p0, Lcom/capcom/zombiecafeandroidJP/w;->b:C

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getCharWidth(C)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
