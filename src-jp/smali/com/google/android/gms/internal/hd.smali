.class public final Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ai;

.field public final b:Lcom/google/android/gms/internal/ii;

.field public final c:Ljava/util/List;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Lorg/json/JSONObject;

.field public final k:Z

.field public final l:Lcom/google/android/gms/internal/bl;

.field public final m:Lcom/google/android/gms/internal/by;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/google/android/gms/internal/bm;

.field public final p:Lcom/google/android/gms/internal/bo;

.field public final q:J

.field public final r:Lcom/google/android/gms/internal/al;

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ii;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/by;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bo;JLcom/google/android/gms/internal/al;JJJLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hd;->a:Lcom/google/android/gms/internal/ai;

    iput-object p2, p0, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/hd;->d:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->e:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/hd;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/hd;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/hd;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/hd;->k:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->l:Lcom/google/android/gms/internal/bl;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->m:Lcom/google/android/gms/internal/by;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->o:Lcom/google/android/gms/internal/bm;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->p:Lcom/google/android/gms/internal/bo;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/hd;->q:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->r:Lcom/google/android/gms/internal/al;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/hd;->s:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/hd;->t:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/hd;->u:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->v:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->j:Lorg/json/JSONObject;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
