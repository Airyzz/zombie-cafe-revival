.class public final Lcom/google/android/gms/internal/ds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/gi;


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:Lcom/google/android/gms/internal/ai;

.field public final d:Lcom/google/android/gms/internal/al;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/pm/ApplicationInfo;

.field public final g:Landroid/content/pm/PackageInfo;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/internal/ev;

.field public final l:Landroid/os/Bundle;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ds;->CREATOR:Lcom/google/android/gms/internal/gi;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ds;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ds;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/ds;->c:Lcom/google/android/gms/internal/ai;

    iput-object p4, p0, Lcom/google/android/gms/internal/ds;->d:Lcom/google/android/gms/internal/al;

    iput-object p5, p0, Lcom/google/android/gms/internal/ds;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ds;->f:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ds;->g:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/ds;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ds;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ds;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/ds;->k:Lcom/google/android/gms/internal/ev;

    iput-object p12, p0, Lcom/google/android/gms/internal/ds;->l:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/google/android/gms/internal/ds;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 14

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ds;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v1, p1, Lcom/google/android/gms/internal/gh;->a:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/internal/ai;

    iget-object v3, p1, Lcom/google/android/gms/internal/gh;->c:Lcom/google/android/gms/internal/al;

    iget-object v4, p1, Lcom/google/android/gms/internal/gh;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/gh;->e:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/google/android/gms/internal/gh;->f:Landroid/content/pm/PackageInfo;

    iget-object v8, p1, Lcom/google/android/gms/internal/gh;->g:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/gms/internal/gh;->h:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/gh;->j:Lcom/google/android/gms/internal/ev;

    iget-object v11, p1, Lcom/google/android/gms/internal/gh;->i:Landroid/os/Bundle;

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ds;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/ds;Landroid/os/Parcel;I)V

    return-void
.end method
