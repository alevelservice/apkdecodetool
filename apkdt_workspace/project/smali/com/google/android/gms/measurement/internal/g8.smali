.class public Lcom/google/android/gms/measurement/internal/g8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/h5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/g8$a;
    }
.end annotation


# static fields
.field private static volatile y:Lcom/google/android/gms/measurement/internal/g8;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/e4;

.field private b:Lcom/google/android/gms/measurement/internal/j3;

.field private c:Lcom/google/android/gms/measurement/internal/e9;

.field private d:Lcom/google/android/gms/measurement/internal/m3;

.field private e:Lcom/google/android/gms/measurement/internal/c8;

.field private f:Lcom/google/android/gms/measurement/internal/x8;

.field private final g:Lcom/google/android/gms/measurement/internal/n8;

.field private h:Lcom/google/android/gms/measurement/internal/o6;

.field private final i:Lcom/google/android/gms/measurement/internal/j4;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/nio/channels/FileLock;

.field private u:Ljava/nio/channels/FileChannel;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/m8;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/g8;-><init>(Lcom/google/android/gms/measurement/internal/m8;Lcom/google/android/gms/measurement/internal/j4;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/m8;Lcom/google/android/gms/measurement/internal/j4;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/g8;->j:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/m8;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 6
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/j4;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzx;)Lcom/google/android/gms/measurement/internal/j4;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/g8;->x:J

    .line 9
    new-instance p2, Lcom/google/android/gms/measurement/internal/n8;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/n8;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->g:Lcom/google/android/gms/measurement/internal/n8;

    .line 12
    new-instance p2, Lcom/google/android/gms/measurement/internal/j3;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/j3;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->b:Lcom/google/android/gms/measurement/internal/j3;

    .line 15
    new-instance p2, Lcom/google/android/gms/measurement/internal/e4;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/e4;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->a:Lcom/google/android/gms/measurement/internal/e4;

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object p2

    .line 19
    new-instance v0, Lcom/google/android/gms/measurement/internal/j8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/j8;-><init>(Lcom/google/android/gms/measurement/internal/g8;Lcom/google/android/gms/measurement/internal/m8;)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 845
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 846
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 847
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 848
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 849
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 851
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 852
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 853
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 854
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 856
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 857
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/g8;Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;
    .locals 0

    .line 1100
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/g8;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/g8;->y:Lcom/google/android/gms/measurement/internal/g8;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/g8;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/g8;->y:Lcom/google/android/gms/measurement/internal/g8;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/measurement/internal/m8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/m8;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p0, Lcom/google/android/gms/measurement/internal/g8;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/g8;-><init>(Lcom/google/android/gms/measurement/internal/m8;)V

    .line 8
    sput-object p0, Lcom/google/android/gms/measurement/internal/g8;->y:Lcom/google/android/gms/measurement/internal/g8;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/g8;->y:Lcom/google/android/gms/measurement/internal/g8;

    return-object p0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string v1, "Unknown"

    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 900
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 901
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-object v4

    .line 902
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 904
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 905
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error retrieving installer package name. appId"

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "manual_install"

    goto :goto_1

    :cond_1
    const-string v5, "com.android.vending"

    .line 906
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, ""

    :cond_2
    :goto_1
    move-object v7, v3

    .line 907
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 908
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 909
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 910
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    :cond_3
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 912
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v1

    move-object v4, v5

    goto :goto_2

    :cond_4
    const/high16 v3, -0x80000000

    move-object v4, v1

    :goto_2
    const-wide/16 v16, 0x0

    .line 913
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzae()Lcom/google/android/gms/measurement/internal/y8;

    const-wide/16 v5, 0x0

    .line 914
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v1

    .line 915
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide/from16 v18, p7

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v5

    .line 916
    :goto_3
    new-instance v29, Lcom/google/android/gms/measurement/internal/zzn;

    move-object/from16 v1, v29

    int-to-long v5, v3

    .line 917
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v3

    .line 918
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z8;->k()J

    move-result-wide v8

    .line 919
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v3

    move-object/from16 v10, p1

    .line 920
    invoke-virtual {v3, v10, v2}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const-string v15, ""

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v13, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v24, p9

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;)V

    return-object v29

    .line 921
    :catch_1
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 922
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 923
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error retrieving newly installed package info. appId, appName"

    .line 924
    invoke-virtual {v3, v5, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 30
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_2

    .line 1003
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/a4;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1005
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1006
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 1007
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 1008
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1009
    :cond_1
    new-instance v29, Lcom/google/android/gms/measurement/internal/zzn;

    move-object/from16 v1, v29

    .line 1010
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v3

    .line 1011
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v5

    .line 1013
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->m()Ljava/lang/String;

    move-result-object v7

    .line 1014
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->n()J

    move-result-wide v8

    .line 1015
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->o()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 1016
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->d()Z

    move-result v13

    const/4 v14, 0x0

    .line 1017
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v28, v15

    move-object/from16 v15, v16

    .line 1018
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->C()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 1019
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->D()Z

    move-result v21

    .line 1020
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->E()Z

    move-result v22

    const/16 v23, 0x0

    .line 1021
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v24

    .line 1022
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->F()Ljava/lang/Boolean;

    move-result-object v25

    .line 1023
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->p()J

    move-result-wide v26

    .line 1024
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/a4;->G()Ljava/util/List;

    move-result-object v28

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;)V

    return-object v29

    .line 1025
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 1026
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/n0$a;ILjava/lang/String;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n0$a;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 671
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 672
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p0;->z()Lcom/google/android/gms/internal/measurement/p0$a;

    move-result-object v0

    .line 674
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/p0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    int-to-long v1, p1

    .line 675
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 676
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p0;

    .line 677
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p0;->z()Lcom/google/android/gms/internal/measurement/p0$a;

    move-result-object v0

    const-string v1, "_ev"

    .line 678
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/p0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 679
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/p0$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 680
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/p0;

    .line 681
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/n0$a;->a(Lcom/google/android/gms/internal/measurement/p0;)Lcom/google/android/gms/internal/measurement/n0$a;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/n0$a;->a(Lcom/google/android/gms/internal/measurement/p0;)Lcom/google/android/gms/internal/measurement/n0$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n0$a;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 667
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 668
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/n0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0$a;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/r0$a;JZ)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-eqz p4, :cond_0

    const-string v0, "_se"

    goto :goto_0

    :cond_0
    const-string v0, "_lte"

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/e9;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 626
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 627
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/o8;

    .line 628
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v2

    .line 629
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    .line 630
    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 631
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 632
    :cond_2
    :goto_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/o8;

    .line 633
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v2

    .line 634
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 635
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    .line 636
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 637
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v0;->B()Lcom/google/android/gms/internal/measurement/v0$a;

    move-result-object v1

    .line 638
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/v0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 639
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 640
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v0$a;->a(J)Lcom/google/android/gms/internal/measurement/v0$a;

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 641
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v0$a;->b(J)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 642
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/v0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 643
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r0$a;->o()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 644
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/r0$a;->d(I)Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/v0;)Lcom/google/android/gms/internal/measurement/r0$a;

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v2, :cond_5

    .line 646
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Lcom/google/android/gms/internal/measurement/v0;)Lcom/google/android/gms/internal/measurement/r0$a;

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_7

    .line 647
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/o8;)Z

    if-eqz p4, :cond_6

    const-string p1, "session-scoped"

    goto :goto_5

    :cond_6
    const-string p1, "lifetime"

    .line 648
    :goto_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 649
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    iget-object p3, v8, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 650
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/a4;)V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 742
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 743
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g8;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 748
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 749
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 751
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v2

    .line 752
    :cond_2
    sget-object v3, Lcom/google/android/gms/measurement/internal/j;->j:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v4, 0x0

    .line 753
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 754
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->k:Lcom/google/android/gms/measurement/internal/w2;

    .line 755
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 756
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 757
    :goto_0
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 758
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 759
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 760
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z8;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 761
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 764
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e4;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z0;

    move-result-object v1

    .line 766
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/e4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 767
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    new-instance v4, La/e/a;

    invoke-direct {v4}, La/e/a;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 769
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v10, v4

    const/4 v1, 0x1

    .line 770
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 771
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v6

    .line 772
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/google/android/gms/measurement/internal/l8;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/l8;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 773
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j3;->g()V

    .line 774
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 775
    invoke-static {v8}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {v11}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j3;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/n3;

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/n3;-><init>(Lcom/google/android/gms/measurement/internal/j3;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/l3;)V

    .line 778
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d4;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 779
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 781
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 782
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/g8;Lcom/google/android/gms/measurement/internal/m8;)V
    .locals 0

    .line 1099
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/m8;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/m8;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/e9;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/e9;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->c:Lcom/google/android/gms/measurement/internal/e9;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->a:Lcom/google/android/gms/measurement/internal/e4;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/b9;)V

    .line 18
    new-instance p1, Lcom/google/android/gms/measurement/internal/x8;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/x8;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->f:Lcom/google/android/gms/measurement/internal/x8;

    .line 21
    new-instance p1, Lcom/google/android/gms/measurement/internal/o6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/o6;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->h:Lcom/google/android/gms/measurement/internal/o6;

    .line 24
    new-instance p1, Lcom/google/android/gms/measurement/internal/c8;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/c8;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/h8;->o()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->e:Lcom/google/android/gms/measurement/internal/c8;

    .line 27
    new-instance p1, Lcom/google/android/gms/measurement/internal/m3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/g8;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->d:Lcom/google/android/gms/measurement/internal/m3;

    .line 29
    iget p1, p0, Lcom/google/android/gms/measurement/internal/g8;->o:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/g8;->p:I

    if-eq p1, v0, :cond_0

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/g8;->o:I

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/g8;->p:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 34
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/g8;->j:Z

    return-void
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 858
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 859
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 860
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 861
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 862
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 863
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 864
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 865
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 866
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 867
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 868
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 869
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 870
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 871
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 872
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return v0
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/n0$a;Lcom/google/android/gms/internal/measurement/n0$a;)Z
    .locals 10

    .line 651
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 652
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n0;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->p()Ljava/lang/String;

    move-result-object v0

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n0;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 656
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p0;->p()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 657
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n0;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->q()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v4

    .line 661
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n0;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-lez v2, :cond_3

    .line 663
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 664
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/String;J)Z
    .locals 62
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 178
    :try_start_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/g8$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/g8$a;-><init>(Lcom/google/android/gms/measurement/internal/g8;Lcom/google/android/gms/measurement/internal/j8;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/g8;->x:J

    .line 180
    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 182
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/h8;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 183
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 184
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v13, :cond_3

    cmp-long v13, v5, v8

    if-eqz v13, :cond_0

    :try_start_2
    new-array v13, v10, [Ljava/lang/String;

    .line 185
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v3

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v5, v3

    move-object v7, v5

    :goto_0
    move-object v3, v0

    goto/16 :goto_a

    :cond_0
    :try_start_3
    new-array v13, v12, [Ljava/lang/String;

    .line 186
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :goto_1
    cmp-long v14, v5, v8

    if-eqz v14, :cond_1

    :try_start_4
    const-string v14, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v14, ""

    .line 187
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 189
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v7, :cond_2

    if-eqz v3, :cond_c

    .line 190
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    goto/16 :goto_b

    .line 191
    :cond_2
    :try_start_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    :try_start_9
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 193
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v23, v3

    move-object v3, v7

    move-object v7, v13

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v8

    if-eqz v3, :cond_4

    :try_start_a
    new-array v3, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    .line 194
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v12

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 195
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    :goto_3
    cmp-long v7, v5, v8

    if-eqz v7, :cond_5

    const-string v7, " and rowid <= ?"

    goto :goto_4

    :cond_5
    const-string v7, ""

    .line 196
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual {v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 198
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v7, :cond_6

    if-eqz v3, :cond_c

    .line 199
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto/16 :goto_b

    .line 200
    :cond_6
    :try_start_d
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v23, v3

    move-object v7, v13

    const/4 v3, 0x0

    :goto_5
    :try_start_e
    const-string v14, "raw_events_metadata"

    const-string v13, "metadata"

    .line 202
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "app_id = ? and metadata_fingerprint = ?"

    new-array v13, v10, [Ljava/lang/String;

    aput-object v3, v13, v11

    aput-object v7, v13, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    move-object/from16 v24, v13

    move-object v13, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v24

    .line 203
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 204
    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-nez v13, :cond_7

    .line 205
    :try_start_10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    .line 207
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v15, :cond_c

    .line 208
    :try_start_11
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v15

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v7, v3

    move-object v5, v15

    goto/16 :goto_0

    .line 209
    :cond_7
    :try_start_12
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 210
    :try_start_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->d()Lcom/google/android/gms/internal/measurement/o3;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/r0;->a([BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/r0;

    move-result-object v13
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 211
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v14, :cond_8

    .line 212
    :try_start_15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v14

    .line 213
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v14

    const-string v10, "Get multiple raw event metadata records, expected one. appId"

    .line 214
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 215
    invoke-virtual {v14, v10, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 216
    :cond_8
    :try_start_16
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 217
    invoke-interface {v2, v13}, Lcom/google/android/gms/measurement/internal/g9;->a(Lcom/google/android/gms/internal/measurement/r0;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    cmp-long v10, v5, v8

    if-eqz v10, :cond_9

    :try_start_17
    const-string v10, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/String;

    aput-object v3, v13, v11

    const/4 v12, 0x1

    aput-object v7, v13, v12

    .line 218
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v13, v6
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    goto :goto_6

    :cond_9
    :try_start_18
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/String;

    aput-object v3, v10, v11

    const/4 v6, 0x1

    aput-object v7, v10, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    :goto_6
    const-string v14, "raw_events"

    const-string v5, "rowid"

    const-string v6, "name"

    const-string v7, "timestamp"

    const-string v10, "data"

    .line 219
    filled-new-array {v5, v6, v7, v10}, [Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    const/16 v21, 0x0

    move-object/from16 v13, v25

    move-object v6, v15

    move-object v15, v5

    .line 220
    :try_start_19
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 221
    :try_start_1a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    .line 222
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    .line 224
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 225
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v5, :cond_c

    .line 226
    :try_start_1b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto/16 :goto_b

    .line 227
    :cond_a
    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v10, 0x3

    .line 228
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 229
    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n0;->z()Lcom/google/android/gms/internal/measurement/n0$a;

    move-result-object v10

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->d()Lcom/google/android/gms/internal/measurement/o3;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/l2;->a([BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/l2;

    check-cast v10, Lcom/google/android/gms/internal/measurement/n0$a;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    const/4 v12, 0x1

    .line 231
    :try_start_1e
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/n0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n0$a;

    const/4 v12, 0x2

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/n0$a;->a(J)Lcom/google/android/gms/internal/measurement/n0$a;

    .line 232
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v2, v6, v7, v10}, Lcom/google/android/gms/measurement/internal/g9;->a(JLcom/google/android/gms/internal/measurement/n0;)Z

    move-result v6
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    .line 233
    :try_start_1f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 234
    :try_start_20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 235
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v10, "Data loss. Failed to merge raw event. appId"

    .line 236
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v10, v12, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    .line 238
    :try_start_21
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v5

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v7, v3

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v6, v15

    move-object v5, v0

    .line 239
    :try_start_22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 240
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v10, "Data loss. Failed to merge raw event metadata. appId"

    .line 241
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 242
    invoke-virtual {v7, v10, v12, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-eqz v6, :cond_c

    .line 243
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v15

    :goto_7
    move-object/from16 v22, v6

    move-object v6, v1

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_8
    move-object v7, v3

    move-object v5, v6

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v23

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v7, v3

    move-object/from16 v5, v23

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v5, v3

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v6, v1

    const/16 v22, 0x0

    :goto_9
    move-object v1, v0

    goto/16 :goto_49

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 244
    :goto_a
    :try_start_24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v6, "Data loss. Error selecting raw event. appId"

    .line 246
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    if-eqz v5, :cond_c

    .line 247
    :try_start_25
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_c
    :goto_b
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g8$a;->c:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g8$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v3, 0x1

    :goto_d
    if-nez v3, :cond_77

    .line 249
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 250
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v3

    .line 251
    check-cast v3, Lcom/google/android/gms/internal/measurement/r0$a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->m()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 252
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 253
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/j;->i0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 254
    :goto_e
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    const-string v5, "_et"

    const-string v6, "_e"

    move/from16 v21, v12

    move-wide/from16 v26, v13

    if-ge v7, v11, :cond_3a

    .line 255
    :try_start_26
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->c:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/n0;

    .line 256
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v11

    .line 257
    check-cast v11, Lcom/google/android/gms/internal/measurement/n0$a;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v14

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 259
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v10, v12}, Lcom/google/android/gms/measurement/internal/e4;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    const-string v12, "_err"

    if-eqz v10, :cond_12

    .line 260
    :try_start_27
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    .line 261
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 262
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 263
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v13

    .line 264
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    invoke-virtual {v5, v6, v10, v13}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e4;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 268
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e4;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_f

    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_11

    .line 269
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 270
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v28

    .line 271
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 272
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0xb

    const-string v31, "_ev"

    .line 273
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    .line 274
    invoke-virtual/range {v28 .. v33}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move/from16 v31, v4

    move v6, v9

    move/from16 v12, v21

    move-wide/from16 v13, v26

    const/4 v5, -0x1

    const/4 v10, 0x3

    move v9, v7

    goto/16 :goto_28

    .line 275
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v10

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 276
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/measurement/internal/e4;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    const-string v13, "_c"

    if-nez v10, :cond_19

    .line 277
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v14

    .line 278
    invoke-static {v14}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v25, v15

    .line 279
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    move/from16 v30, v7

    const v7, 0x171c4

    if-eq v15, v7, :cond_15

    const v7, 0x17331

    if-eq v15, v7, :cond_14

    const v7, 0x17333

    if-eq v15, v7, :cond_13

    goto :goto_11

    :cond_13
    const-string v7, "_ui"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_12

    :cond_14
    const-string v7, "_ug"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x2

    goto :goto_12

    :cond_15
    const-string v7, "_in"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    goto :goto_12

    :cond_16
    :goto_11
    const/4 v7, -0x1

    :goto_12
    if-eqz v7, :cond_17

    const/4 v14, 0x1

    if-eq v7, v14, :cond_17

    const/4 v14, 0x2

    if-eq v7, v14, :cond_17

    const/4 v7, 0x0

    goto :goto_13

    :cond_17
    const/4 v7, 0x1

    :goto_13
    if-eqz v7, :cond_18

    goto :goto_14

    :cond_18
    move/from16 v31, v4

    move-object v7, v5

    move/from16 v32, v8

    move/from16 v33, v9

    move-object v9, v6

    goto/16 :goto_1b

    :cond_19
    move/from16 v30, v7

    move/from16 v25, v15

    :goto_14
    move/from16 v31, v4

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 280
    :goto_15
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->l()I

    move-result v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    move/from16 v32, v8

    const-string v8, "_r"

    if-ge v7, v4, :cond_1c

    .line 281
    :try_start_29
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/n0$a;->a(I)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 282
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/n0$a;->a(I)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    .line 283
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v4

    .line 284
    check-cast v4, Lcom/google/android/gms/internal/measurement/p0$a;

    move/from16 v33, v9

    const-wide/16 v8, 0x1

    .line 285
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/p0;

    .line 287
    invoke-virtual {v11, v7, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(ILcom/google/android/gms/internal/measurement/p0;)Lcom/google/android/gms/internal/measurement/n0$a;

    const/4 v14, 0x1

    goto :goto_16

    :cond_1a
    move/from16 v33, v9

    .line 288
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/n0$a;->a(I)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 289
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/n0$a;->a(I)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v4

    .line 291
    check-cast v4, Lcom/google/android/gms/internal/measurement/p0$a;

    const-wide/16 v8, 0x1

    .line 292
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 293
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/p0;

    .line 294
    invoke-virtual {v11, v7, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(ILcom/google/android/gms/internal/measurement/p0;)Lcom/google/android/gms/internal/measurement/n0$a;

    const/4 v15, 0x1

    :cond_1b
    :goto_16
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v32

    move/from16 v9, v33

    goto :goto_15

    :cond_1c
    move/from16 v33, v9

    if-nez v14, :cond_1d

    if-eqz v10, :cond_1d

    .line 295
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v7, "Marking event as conversion"

    .line 297
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v9

    .line 298
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p0;->z()Lcom/google/android/gms/internal/measurement/p0$a;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/measurement/p0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    move-object v7, v5

    move-object v9, v6

    const-wide/16 v5, 0x1

    .line 302
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 303
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(Lcom/google/android/gms/internal/measurement/p0$a;)Lcom/google/android/gms/internal/measurement/n0$a;

    goto :goto_17

    :cond_1d
    move-object v7, v5

    move-object v9, v6

    :goto_17
    if-nez v15, :cond_1e

    .line 304
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Marking event as real-time"

    .line 306
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v6

    .line 307
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p0;->z()Lcom/google/android/gms/internal/measurement/p0$a;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/p0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    const-wide/16 v5, 0x1

    .line 311
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 312
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(Lcom/google/android/gms/internal/measurement/p0$a;)Lcom/google/android/gms/internal/measurement/n0$a;

    .line 313
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v34

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->t()J

    move-result-wide v35

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 315
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    .line 316
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/e9;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v4

    .line 317
    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/d9;->e:J

    .line 318
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 319
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/z8;->a(Ljava/lang/String;)I

    move-result v6

    int-to-long v14, v6

    cmp-long v6, v4, v14

    if-lez v6, :cond_1f

    .line 320
    invoke-static {v11, v8}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;)V

    goto :goto_18

    :cond_1f
    const/16 v21, 0x1

    .line 321
    :goto_18
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/r8;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v10, :cond_25

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v34

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->t()J

    move-result-wide v35

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 324
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    .line 325
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/e9;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v4

    .line 326
    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/d9;->c:J

    .line 327
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 328
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v8

    .line 329
    sget-object v14, Lcom/google/android/gms/measurement/internal/j;->s:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v8, v14}, Lcom/google/android/gms/measurement/internal/z8;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)I

    move-result v6

    int-to-long v14, v6

    cmp-long v6, v4, v14

    if-lez v6, :cond_25

    .line 330
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 332
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 333
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 334
    :goto_19
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->l()I

    move-result v14

    if-ge v4, v14, :cond_22

    .line 335
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(I)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v14

    .line 336
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 337
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v6

    .line 338
    check-cast v6, Lcom/google/android/gms/internal/measurement/p0$a;

    move v8, v4

    goto :goto_1a

    .line 339
    :cond_20
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    const/4 v5, 0x1

    :cond_21
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    if-eqz v5, :cond_23

    if-eqz v6, :cond_23

    .line 340
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/n0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0$a;

    goto :goto_1b

    :cond_23
    if-eqz v6, :cond_24

    .line 341
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b4$a;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4$a;

    check-cast v4, Lcom/google/android/gms/internal/measurement/p0$a;

    .line 342
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/measurement/p0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0$a;

    const-wide/16 v5, 0xa

    .line 343
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/p0$a;->a(J)Lcom/google/android/gms/internal/measurement/p0$a;

    .line 344
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/p0;

    .line 345
    invoke-virtual {v11, v8, v4}, Lcom/google/android/gms/internal/measurement/n0$a;->a(ILcom/google/android/gms/internal/measurement/p0;)Lcom/google/android/gms/internal/measurement/n0$a;

    goto :goto_1b

    .line 346
    :cond_24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 347
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 348
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 349
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    :cond_25
    :goto_1b
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 351
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/z8;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    if-eqz v10, :cond_2e

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->j()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    .line 353
    :goto_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_28

    const-string v10, "value"

    .line 354
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    move v6, v5

    goto :goto_1d

    :cond_26
    const-string v10, "currency"

    .line 355
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    move v8, v5

    :cond_27
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_28
    const/4 v5, -0x1

    if-eq v6, v5, :cond_2f

    .line 356
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/p0;->q()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/p0;->u()Z

    move-result v5

    if-nez v5, :cond_29

    .line 357
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 358
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/n0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0$a;

    .line 360
    invoke-static {v11, v13}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;)V

    const/16 v4, 0x12

    const-string v5, "value"

    .line 361
    invoke-static {v11, v4, v5}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;ILjava/lang/String;)V

    goto :goto_21

    :cond_29
    const/4 v5, -0x1

    if-ne v8, v5, :cond_2a

    const/4 v4, 0x1

    const/4 v10, 0x3

    goto :goto_20

    .line 362
    :cond_2a
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/p0;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p0;->p()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_2b

    :goto_1e
    const/4 v4, 0x1

    goto :goto_20

    :cond_2b
    const/4 v8, 0x0

    .line 364
    :goto_1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_2d

    .line 365
    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 366
    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-nez v14, :cond_2c

    goto :goto_1e

    .line 367
    :cond_2c
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v8, v12

    goto :goto_1f

    :cond_2d
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_30

    .line 368
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 369
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 370
    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/n0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0$a;

    .line 372
    invoke-static {v11, v13}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;)V

    const/16 v4, 0x13

    const-string v6, "currency"

    .line 373
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;ILjava/lang/String;)V

    goto :goto_22

    :cond_2e
    :goto_21
    const/4 v5, -0x1

    :cond_2f
    const/4 v10, 0x3

    .line 374
    :cond_30
    :goto_22
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 375
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/j;->h0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 376
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0;

    const-string v6, "_fr"

    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    if-nez v4, :cond_32

    if-eqz v19, :cond_31

    .line 378
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    cmp-long v4, v12, v14

    if-gtz v4, :cond_31

    .line 379
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/b4$a;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4$a;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0$a;

    .line 380
    invoke-direct {v1, v11, v4}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Lcom/google/android/gms/internal/measurement/n0$a;)Z

    move-result v6

    if-eqz v6, :cond_31

    move/from16 v6, v33

    .line 381
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;

    move/from16 v8, v32

    :goto_23
    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_25

    :cond_31
    move/from16 v6, v33

    move-object/from16 v18, v11

    move/from16 v8, v25

    goto :goto_25

    :cond_32
    move/from16 v6, v33

    goto :goto_24

    :cond_33
    move/from16 v6, v33

    const-string v4, "_vs"

    .line 382
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0;

    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v4

    if-nez v4, :cond_35

    if-eqz v18, :cond_34

    .line 384
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    cmp-long v4, v12, v14

    if-gtz v4, :cond_34

    .line 385
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/b4$a;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4$a;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0$a;

    .line 386
    invoke-direct {v1, v4, v11}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Lcom/google/android/gms/internal/measurement/n0$a;)Z

    move-result v8

    if-eqz v8, :cond_34

    move/from16 v8, v32

    .line 387
    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_23

    :cond_34
    move/from16 v8, v32

    move-object/from16 v19, v11

    move/from16 v6, v25

    goto :goto_25

    :cond_35
    :goto_24
    move/from16 v8, v32

    goto :goto_25

    :cond_36
    move/from16 v8, v32

    move/from16 v6, v33

    :goto_25
    if-nez v31, :cond_39

    .line 388
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 389
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n0$a;->l()I

    move-result v4

    if-nez v4, :cond_37

    .line 390
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 391
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v7, "Engagement event does not contain any parameters. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 392
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 393
    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    .line 394
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    .line 395
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n0;

    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_38

    .line 396
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 397
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v7, "Engagement event does not include duration. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 398
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 399
    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    .line 400
    :cond_38
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v12, v26, v12

    goto :goto_27

    :cond_39
    :goto_26
    move-wide/from16 v12, v26

    .line 401
    :goto_27
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/g8$a;->c:Ljava/util/List;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v7, Lcom/google/android/gms/internal/measurement/n0;

    move/from16 v9, v30

    invoke-interface {v4, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v25, 0x1

    .line 402
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Lcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;

    move-wide v13, v12

    move/from16 v12, v21

    :goto_28
    add-int/lit8 v7, v9, 0x1

    move v9, v6

    move/from16 v4, v31

    goto/16 :goto_e

    :cond_3a
    move/from16 v31, v4

    move-object v7, v5

    move-object v9, v6

    move/from16 v25, v15

    if-eqz v31, :cond_3e

    move/from16 v5, v25

    move-wide/from16 v13, v26

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v5, :cond_3f

    .line 403
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0;

    move-result-object v6

    .line 404
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    const-string v8, "_fr"

    invoke-static {v6, v8}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v8

    if-eqz v8, :cond_3b

    .line 406
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->c(I)Lcom/google/android/gms/internal/measurement/r0$a;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 407
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p0;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 408
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/p0;->q()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2a

    :cond_3c
    const/4 v6, 0x0

    :goto_2a
    if-eqz v6, :cond_3d

    .line 409
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmp-long v8, v10, v18

    if-lez v8, :cond_3d

    .line 410
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v13, v10

    :cond_3d
    :goto_2b
    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_29

    :cond_3e
    move-wide/from16 v13, v26

    :cond_3f
    const/4 v4, 0x0

    .line 411
    invoke-direct {v1, v3, v13, v14, v4}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/r0$a;JZ)V

    .line 412
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 413
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/j;->z0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 414
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/n0;

    const-string v6, "_s"

    .line 415
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n0;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v4, 0x1

    goto :goto_2c

    :cond_41
    const/4 v4, 0x0

    :goto_2c
    if-eqz v4, :cond_42

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    .line 417
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_se"

    .line 418
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const/4 v4, 0x1

    .line 419
    invoke-direct {v1, v3, v13, v14, v4}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/internal/measurement/r0$a;JZ)V

    goto :goto_2d

    .line 420
    :cond_43
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 421
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/j;->A0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    .line 423
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_se"

    .line 424
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_44
    :goto_2d
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 426
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/j;->j0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v4

    .line 428
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->n()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e4;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 430
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->m()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 431
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->D()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 432
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->h()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->u()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 433
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v0;->B()Lcom/google/android/gms/internal/measurement/v0$a;

    move-result-object v5

    const-string v6, "_npa"

    .line 435
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/v0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 436
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/n8;->h()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->s()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/v0$a;->a(J)Lcom/google/android/gms/internal/measurement/v0$a;

    const-wide/16 v6, 0x1

    .line 437
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/v0$a;->b(J)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 438
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v4, Lcom/google/android/gms/internal/measurement/v0;

    const/4 v5, 0x0

    .line 439
    :goto_2e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->o()I

    move-result v6

    if-ge v5, v6, :cond_46

    const-string v6, "_npa"

    .line 440
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->d(I)Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/v0;->n()Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 442
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/v0;)Lcom/google/android/gms/internal/measurement/r0$a;

    const/4 v5, 0x1

    goto :goto_2f

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_46
    const/4 v5, 0x0

    :goto_2f
    if-nez v5, :cond_47

    .line 443
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Lcom/google/android/gms/internal/measurement/v0;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 444
    :cond_47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->w()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 445
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->n()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->j()Ljava/util/List;

    move-result-object v6

    .line 446
    invoke-static {v4}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->f()Lcom/google/android/gms/measurement/internal/x8;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/x8;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 448
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 449
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 450
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    if-eqz v4, :cond_65

    .line 451
    :try_start_2a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v6

    .line 454
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/r8;->r()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 455
    :goto_30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0$a;->l()I

    move-result v8

    if-ge v7, v8, :cond_63

    .line 456
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0;

    move-result-object v8

    .line 457
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v8

    .line 458
    check-cast v8, Lcom/google/android/gms/internal/measurement/n0$a;

    .line 459
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    const-string v10, "_sr"

    if-eqz v9, :cond_4c

    .line 460
    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/n0;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 461
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/f;

    if-nez v11, :cond_48

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v11

    .line 463
    invoke-interface {v4, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_48
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/f;->i:Ljava/lang/Long;

    if-nez v9, :cond_4b

    .line 465
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/f;->j:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_49

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/f;->j:Ljava/lang/Long;

    .line 467
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    :cond_49
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/f;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_4a

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/f;->k:Ljava/lang/Boolean;

    .line 469
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 471
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    :cond_4a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_4b
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :goto_31
    move-object v1, v3

    move-object/from16 p1, v6

    move-object v3, v2

    move v2, v7

    const-wide/16 v6, 0x1

    goto/16 :goto_3d

    .line 474
    :cond_4c
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 475
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/e4;->f(Ljava/lang/String;)J

    move-result-wide v11

    .line 476
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    .line 477
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/r8;->a(JJ)J

    move-result-wide v13

    .line 478
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/n0;

    const-string v15, "_dbg"

    move-wide/from16 v26, v11

    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 479
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    if-nez v12, :cond_52

    if-nez v11, :cond_4d

    goto :goto_33

    .line 480
    :cond_4d
    :try_start_2d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n0;->q()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/p0;

    move-object/from16 p1, v9

    .line 481
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 482
    instance-of v9, v11, Ljava/lang/Long;

    if-eqz v9, :cond_4e

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->s()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    :cond_4e
    instance-of v9, v11, Ljava/lang/String;

    if-eqz v9, :cond_4f

    .line 483
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    :cond_4f
    instance-of v9, v11, Ljava/lang/Double;

    if-eqz v9, :cond_52

    .line 484
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/p0;->v()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    :cond_50
    const/4 v9, 0x1

    goto :goto_34

    :cond_51
    move-object/from16 v9, p1

    goto :goto_32

    :cond_52
    :goto_33
    const/4 v9, 0x0

    :goto_34
    if-nez v9, :cond_53

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 486
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/e4;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_35

    :cond_53
    const/4 v12, 0x1

    :goto_35
    if-gtz v12, :cond_54

    .line 487
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v9

    .line 488
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v9

    const-string v10, "Sample rate must be positive. event, rate"

    .line 489
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v9, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    goto/16 :goto_31

    .line 492
    :cond_54
    :try_start_2e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/f;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    if-nez v9, :cond_56

    .line 493
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v11, v15}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    if-nez v9, :cond_56

    .line 494
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v9

    .line 495
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v9

    const-string v11, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 496
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v18, v13

    .line 497
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v13

    .line 498
    invoke-virtual {v9, v11, v15, v13}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v9

    .line 500
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 501
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/google/android/gms/measurement/internal/j;->y0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 502
    new-instance v9, Lcom/google/android/gms/measurement/internal/f;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 503
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v31

    .line 504
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    .line 505
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v30, v9

    invoke-direct/range {v30 .. v46}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_36

    .line 506
    :cond_55
    new-instance v9, Lcom/google/android/gms/measurement/internal/f;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 507
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v48

    .line 508
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v49

    const-wide/16 v50, 0x1

    const-wide/16 v52, 0x1

    .line 509
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v54

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v47, v9

    invoke-direct/range {v47 .. v61}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    goto :goto_36

    :cond_56
    move-wide/from16 v18, v13

    .line 510
    :goto_36
    :try_start_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v11, Lcom/google/android/gms/internal/measurement/n0;

    const-string v13, "_eid"

    invoke-static {v11, v13}, Lcom/google/android/gms/measurement/internal/n8;->b(Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_57

    const/4 v13, 0x1

    goto :goto_37

    :cond_57
    const/4 v13, 0x0

    .line 511
    :goto_37
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    const/4 v14, 0x1

    if-ne v12, v14, :cond_5a

    .line 512
    :try_start_31
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_59

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/f;->i:Ljava/lang/Long;

    if-nez v10, :cond_58

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/f;->j:Ljava/lang/Long;

    if-nez v10, :cond_58

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/f;->k:Ljava/lang/Boolean;

    if-eqz v10, :cond_59

    :cond_58
    const/4 v10, 0x0

    .line 514
    invoke-virtual {v9, v10, v10, v10}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    .line 515
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_59
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    goto/16 :goto_31

    .line 517
    :cond_5a
    :try_start_32
    invoke-virtual {v6, v12}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    if-nez v14, :cond_5c

    .line 518
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    int-to-long v11, v12

    .line 519
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v8, v10, v14}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 522
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10, v11}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    .line 523
    :cond_5b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v10

    .line 524
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v11

    move-wide/from16 v14, v18

    .line 525
    invoke-virtual {v9, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/f;->a(JJ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    .line 526
    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_a

    move-object v1, v3

    move-object/from16 p1, v6

    move-object v3, v2

    move v2, v7

    const-wide/16 v6, 0x1

    goto/16 :goto_3c

    :cond_5c
    move-object/from16 p1, v6

    move-wide/from16 v14, v18

    .line 527
    :try_start_34
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    move-object/from16 v18, v3

    .line 528
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/z8;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 529
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/Long;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    if-eqz v3, :cond_5d

    .line 530
    :try_start_35
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v26
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_a

    move-object v3, v2

    move/from16 v19, v7

    goto :goto_38

    .line 531
    :cond_5d
    :try_start_36
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-object v3, v2

    .line 532
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->m()J

    move-result-wide v1

    move/from16 v19, v7

    move-wide/from16 v6, v26

    invoke-static {v1, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/r8;->a(JJ)J

    move-result-wide v26

    :goto_38
    cmp-long v1, v26, v14

    if-eqz v1, :cond_5e

    :goto_39
    const/4 v1, 0x1

    goto :goto_3a

    :cond_5e
    const/4 v1, 0x0

    goto :goto_3a

    :cond_5f
    move-object v3, v2

    move/from16 v19, v7

    .line 533
    iget-wide v1, v9, Lcom/google/android/gms/measurement/internal/f;->g:J

    .line 534
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v6, 0x5265c00

    cmp-long v23, v1, v6

    if-ltz v23, :cond_5e

    goto :goto_39

    :goto_3a
    if-eqz v1, :cond_61

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    const-string v1, "_efs"

    const-wide/16 v6, 0x1

    .line 536
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    int-to-long v1, v12

    .line 538
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 539
    invoke-static {v8, v10, v11}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/n0$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v10, Lcom/google/android/gms/internal/measurement/n0;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_60

    .line 542
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v1, v10}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    .line 543
    :cond_60
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->i()J

    move-result-wide v10

    .line 545
    invoke-virtual {v9, v10, v11, v14, v15}, Lcom/google/android/gms/measurement/internal/f;->a(JJ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    .line 546
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_61
    const-wide/16 v6, 0x1

    .line 547
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 548
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n0$a;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v9, v11, v2, v2}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    .line 550
    invoke-interface {v4, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_3b
    move-object/from16 v1, v18

    move/from16 v2, v19

    .line 551
    :goto_3c
    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->a(ILcom/google/android/gms/internal/measurement/n0$a;)Lcom/google/android/gms/internal/measurement/r0$a;

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, p1

    move v7, v2

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v1, p0

    goto/16 :goto_30

    :cond_63
    move-object v1, v3

    move-object v3, v2

    .line 552
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->l()I

    move-result v6

    if-ge v2, v6, :cond_64

    .line 553
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->m()Lcom/google/android/gms/internal/measurement/r0$a;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 554
    :cond_64
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/f;)V

    goto :goto_3e

    :cond_65
    move-object v1, v3

    move-object v3, v2

    :cond_66
    const-wide v4, 0x7fffffffffffffffL

    .line 556
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->b(J)Lcom/google/android/gms/internal/measurement/r0$a;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->c(J)Lcom/google/android/gms/internal/measurement/r0$a;

    const/4 v2, 0x0

    .line 557
    :goto_3f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->l()I

    move-result v4

    if-ge v2, v4, :cond_69

    .line 558
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/r0$a;->b(I)Lcom/google/android/gms/internal/measurement/n0;

    move-result-object v4

    .line 559
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->p()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_67

    .line 560
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->b(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 561
    :cond_67
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->q()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_68

    .line 562
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n0;->p()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->c(J)Lcom/google/android/gms/internal/measurement/r0$a;

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 563
    :cond_69
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_7

    if-nez v4, :cond_6a

    move-object/from16 v6, p0

    .line 565
    :try_start_37
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 566
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 567
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 568
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    :cond_6a
    move-object/from16 v6, p0

    .line 569
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->l()I

    move-result v5

    if-lez v5, :cond_6f

    .line 570
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->j()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_6b

    .line 571
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->e(J)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_40

    .line 572
    :cond_6b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->u()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 573
    :goto_40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->i()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_6c

    goto :goto_41

    :cond_6c
    move-wide v7, v9

    :goto_41
    cmp-long v5, v7, v11

    if-eqz v5, :cond_6d

    .line 574
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/r0$a;->d(J)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_42

    .line 575
    :cond_6d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->s()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 576
    :goto_42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->t()V

    .line 577
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->q()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->f(I)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 578
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->p()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/a4;->a(J)V

    .line 579
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->q()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 580
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->B()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 581
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_43

    .line 582
    :cond_6e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->v()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 583
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 584
    :cond_6f
    :goto_44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r0$a;->l()I

    move-result v4

    if-lez v4, :cond_73

    .line 585
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzae()Lcom/google/android/gms/measurement/internal/y8;

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/e4;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z0;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 587
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/z0;->c:Ljava/lang/Long;

    if-nez v5, :cond_70

    goto :goto_45

    .line 588
    :cond_70
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/z0;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->i(J)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_46

    .line 589
    :cond_71
    :goto_45
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r0;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    const-wide/16 v4, -0x1

    .line 590
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->i(J)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_46

    .line 591
    :cond_72
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/g8$a;->a:Lcom/google/android/gms/internal/measurement/r0;

    .line 593
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 594
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/r0;

    move/from16 v12, v21

    invoke-virtual {v4, v1, v12}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/internal/measurement/r0;Z)Z

    .line 596
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/g8$a;->b:Ljava/util/List;

    .line 597
    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 599
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 601
    :goto_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_75

    if-eqz v5, :cond_74

    const-string v7, ","

    .line 602
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_74
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_75
    const-string v5, ")"

    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v7, "raw_events"

    .line 606
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 607
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_76

    .line 608
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 610
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 611
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 612
    invoke-virtual {v1, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    :try_start_38
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 615
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_38} :catch_b
    .catchall {:try_start_38 .. :try_end_38} :catchall_9

    goto :goto_48

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 616
    :try_start_39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 618
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    const/4 v1, 0x1

    return v1

    :catchall_7
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_4a

    :cond_77
    move-object v6, v1

    .line 621
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_9

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    const/4 v1, 0x0

    return v1

    :catchall_8
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object/from16 v22, v5

    :goto_49
    if-eqz v22, :cond_78

    .line 623
    :try_start_3b
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_4a

    :catchall_a
    move-exception v0

    move-object v6, v1

    :goto_4a
    move-object v1, v0

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    goto :goto_4c

    :goto_4b
    throw v1

    :goto_4c
    goto :goto_4b
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/a4;)Ljava/lang/Boolean;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 319
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 322
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 323
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 328
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/h8;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h8;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 27
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_s"

    .line 9
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 14
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 16
    :cond_0
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v7, :cond_1

    .line 17
    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 18
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/e4;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_6

    .line 19
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 21
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v5

    .line 23
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 24
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/e4;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/e4;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 27
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 28
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const/16 v9, 0xb

    .line 29
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "_ev"

    move-object v8, v15

    .line 30
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a4;->s()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a4;->r()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 33
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    .line 34
    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 36
    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->E:Lcom/google/android/gms/measurement/internal/w2;

    .line 37
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 39
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 41
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    :cond_5
    return-void

    .line 42
    :cond_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    const/4 v10, 0x2

    .line 43
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/f3;->a(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 44
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    .line 46
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v8

    .line 47
    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/d3;->a(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Logging event"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 49
    :try_start_0
    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    const-string v7, "_iap"

    .line 50
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "ecommerce_purchase"

    if-nez v7, :cond_9

    :try_start_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    .line 51
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 52
    :cond_9
    :goto_2
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    const-string v9, "currency"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "value"

    if-eqz v8, :cond_c

    .line 54
    :try_start_2
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->e(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v8, v16, v20

    if-nez v8, :cond_a

    .line 55
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v8, v18

    :cond_a
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v18, v16, v8

    if-gtz v18, :cond_b

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v18, v16, v8

    if-ltz v18, :cond_b

    .line 56
    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    goto :goto_3

    .line 57
    :cond_b
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 59
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 60
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 61
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_9

    .line 62
    :cond_c
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 63
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 64
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "[A-Z]{3}"

    .line 65
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "_ltv_"

    .line 66
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object v10, v7

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/measurement/internal/e9;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 68
    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Long;

    if-nez v11, :cond_e

    goto :goto_5

    .line 69
    :cond_e
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 70
    new-instance v17, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    .line 71
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    .line 72
    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v21

    add-long v19, v19, v8

    .line 73
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v7, v17

    move-object v8, v15

    move-object v9, v11

    const/4 v11, 0x2

    move-wide/from16 v23, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide/from16 v11, v21

    move-object/from16 v13, v19

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v5, v17

    goto :goto_7

    :cond_f
    :goto_5
    move-wide/from16 v23, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    .line 75
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v11

    .line 76
    sget-object v12, Lcom/google/android/gms/measurement/internal/j;->J:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v11, v15, v12}, Lcom/google/android/gms/measurement/internal/z8;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)I

    move-result v11

    sub-int/2addr v11, v5

    .line 77
    invoke-static {v15}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 79
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/h8;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v15, v5, v6

    const/16 v16, 0x1

    aput-object v15, v5, v16

    .line 81
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v5, v16

    .line 82
    invoke-virtual {v12, v13, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 83
    :try_start_5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :goto_6
    new-instance v5, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    .line 85
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    .line 86
    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v7, v5

    move-object v8, v15

    move-object v9, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 87
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/o8;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 88
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 90
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 91
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v10

    .line 92
    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 93
    invoke-virtual {v7, v8, v9, v10, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    .line 95
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    :cond_10
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    :cond_11
    :goto_8
    const/4 v11, 0x1

    :goto_9
    if-nez v11, :cond_12

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    .line 98
    :cond_12
    :goto_a
    :try_start_6
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/r8;->e(Ljava/lang/String;)Z

    move-result v5

    .line 99
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->t()J

    move-result-wide v8

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v12, v5

    move/from16 v14, v16

    move-object/from16 v18, v15

    move/from16 v15, v17

    .line 102
    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/e9;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v7

    .line 103
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/d9;->b:J

    .line 104
    sget-object v10, Lcom/google/android/gms/measurement/internal/j;->p:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v14, 0x0

    .line 105
    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    cmp-long v17, v8, v14

    if-lez v17, :cond_14

    .line 107
    rem-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-nez v2, :cond_13

    .line 108
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 110
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/d9;->b:J

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 112
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :cond_14
    if-eqz v5, :cond_16

    .line 115
    :try_start_7
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/d9;->a:J

    .line 116
    sget-object v6, Lcom/google/android/gms/measurement/internal/j;->r:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v12, 0x0

    .line 117
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v12, v6

    sub-long/2addr v8, v12

    cmp-long v6, v8, v14

    if-lez v6, :cond_16

    .line 119
    rem-long/2addr v8, v10

    const-wide/16 v3, 0x1

    cmp-long v5, v8, v3

    if-nez v5, :cond_15

    .line 120
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 122
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lcom/google/android/gms/measurement/internal/d9;->a:J

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 124
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :cond_15
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    .line 126
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, v18

    .line 127
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :cond_16
    if-eqz v16, :cond_18

    .line 130
    :try_start_8
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/d9;->d:J

    .line 131
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 132
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 133
    sget-object v11, Lcom/google/android/gms/measurement/internal/j;->q:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/z8;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)I

    move-result v6

    const v10, 0xf4240

    .line 134
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x0

    .line 135
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v10, v6

    sub-long/2addr v8, v10

    cmp-long v6, v8, v14

    if-lez v6, :cond_19

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_17

    .line 136
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 138
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/d9;->d:J

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 140
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :cond_18
    const/4 v12, 0x0

    .line 143
    :cond_19
    :try_start_9
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzah;->j()Landroid/os/Bundle;

    move-result-object v6

    .line 144
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const-string v8, "_o"

    .line 145
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    move-object/from16 v13, v18

    .line 147
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/r8;->d(Ljava/lang/String;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v11, "_r"

    if-eqz v7, :cond_1a

    .line 148
    :try_start_a
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const-string v8, "_dbg"

    const-wide/16 v9, 0x1

    .line 149
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v6, v8, v12}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v11, v8}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1a
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v8, "_sno"

    if-eqz v7, :cond_1b

    .line 153
    :try_start_b
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v7

    .line 154
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/z8;->o(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 156
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/e9;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 157
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_1b

    .line 158
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v9

    .line 159
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    invoke-virtual {v9, v6, v8, v7}, Lcom/google/android/gms/measurement/internal/r8;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_1b
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 161
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 162
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/j;->f0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 163
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 164
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/z8;->o(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 165
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjn;

    const/4 v12, 0x0

    invoke-direct {v4, v8, v14, v15, v12}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 166
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_b

    :cond_1c
    const/4 v12, 0x0

    .line 167
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v14

    if-lez v4, :cond_1d

    .line 168
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 170
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 171
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 172
    invoke-virtual {v4, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    :cond_1d
    new-instance v4, Lcom/google/android/gms/measurement/internal/g;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzai;->h:J

    const-wide/16 v19, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v13

    move-object/from16 v26, v11

    move-object v11, v2

    move-object/from16 v16, v12

    move-object v2, v13

    const/16 v25, 0x0

    move-wide v12, v14

    move-object/from16 p1, v16

    move-wide/from16 v14, v19

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/g;-><init>(Lcom/google/android/gms/measurement/internal/j4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/e9;->g(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1e

    if-eqz v5, :cond_1e

    .line 176
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    .line 178
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 179
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 180
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x1f4

    .line 181
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 182
    invoke-virtual {v3, v5, v6, v4, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    .line 184
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    .line 186
    :cond_1e
    :try_start_c
    new-instance v5, Lcom/google/android/gms/measurement/internal/f;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/g;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/g;->d:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v5

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_c

    .line 187
    :cond_1f
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/f;->f:J

    invoke-virtual {v4, v2, v7, v8}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/j4;J)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v4

    .line 188
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/g;->d:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/f;->a(J)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    .line 189
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/f;)V

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 192
    invoke-static {v4}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/g;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/g;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->a(Z)V

    .line 196
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r0;->B0()Lcom/google/android/gms/internal/measurement/r0$a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/r0$a;->a(I)Lcom/google/android/gms/internal/measurement/r0$a;

    const-string v6, "android"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 197
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 198
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 199
    :cond_20
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 200
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 201
    :cond_21
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 202
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 203
    :cond_22
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-eqz v10, :cond_23

    .line 204
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->g(I)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 205
    :cond_23
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->i:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->f(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 206
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 207
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 208
    :cond_24
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 209
    sget-object v7, Lcom/google/android/gms/measurement/internal/j;->s0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 211
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_d

    .line 212
    :cond_25
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 213
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 214
    :cond_26
    :goto_d
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->j:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_27

    .line 215
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->j:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->h(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 216
    :cond_27
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->x:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->k(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 217
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 218
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/j;->n0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/n8;->s()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 220
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 221
    :cond_28
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    .line 222
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/o3;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 223
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 224
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->s:Z

    if-eqz v7, :cond_2c

    .line 225
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 226
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_2c

    .line 227
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Z)Lcom/google/android/gms/internal/measurement/r0$a;

    goto :goto_f

    .line 228
    :cond_29
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 229
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 230
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/d;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2c

    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->t:Z

    if-eqz v6, :cond_2c

    .line 231
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 232
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2a

    .line 233
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    const-string v7, "null secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "null"

    goto :goto_e

    .line 235
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 236
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 237
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v10, "empty secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :cond_2b
    :goto_e
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 239
    :cond_2c
    :goto_f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 240
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    .line 241
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 242
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 243
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    .line 245
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 246
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 247
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 248
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->q()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->e(I)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 249
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 250
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->p:J

    .line 251
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->j(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 252
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->c()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->v()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 253
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    .line 254
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    move-object/from16 v6, p1

    .line 255
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 256
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v6

    if-nez v6, :cond_2e

    .line 257
    new-instance v6, Lcom/google/android/gms/measurement/internal/a4;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/j4;Ljava/lang/String;)V

    .line 258
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v7

    .line 259
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/r8;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;)V

    .line 260
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->e(Ljava/lang/String;)V

    .line 261
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->b(Ljava/lang/String;)V

    .line 262
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 263
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->d(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/a4;->g(J)V

    .line 266
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/a4;->a(J)V

    .line 267
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 268
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->f(Ljava/lang/String;)V

    .line 269
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/a4;->c(J)V

    .line 270
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->g(Ljava/lang/String;)V

    .line 271
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->i:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/a4;->d(J)V

    .line 272
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->j:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/a4;->e(J)V

    .line 273
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/a4;->a(Z)V

    .line 274
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->p:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/a4;->p(J)V

    .line 275
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzn;->x:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/a4;->f(J)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 277
    :cond_2e
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 278
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 279
    :cond_2f
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 280
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/r0$a;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 281
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    .line 282
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_31

    .line 283
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v0;->B()Lcom/google/android/gms/internal/measurement/v0$a;

    move-result-object v7

    .line 284
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/v0$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 285
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/o8;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/o8;->d:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/v0$a;->a(J)Lcom/google/android/gms/internal/measurement/v0$a;

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v10

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/v0$a;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/r0$a;->a(Lcom/google/android/gms/internal/measurement/v0$a;)Lcom/google/android/gms/internal/measurement/r0$a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 288
    :cond_31
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v6, Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/internal/measurement/r0;)J

    move-result-wide v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 289
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    .line 290
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/g;->f:Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v7, :cond_34

    .line 291
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/g;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzah;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, v26

    .line 292
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    goto :goto_12

    :cond_32
    move-object/from16 v26, v11

    goto :goto_11

    .line 293
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v7

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/g;->a:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/e4;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v10

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->t()J

    move-result-wide v11

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/g;->a:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/measurement/internal/e9;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/d9;

    move-result-object v10

    if-eqz v7, :cond_34

    .line 296
    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/d9;->e:J

    .line 297
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v7

    .line 298
    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/g;->a:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/z8;->a(Ljava/lang/String;)I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_34

    goto :goto_12

    :cond_34
    const/4 v5, 0x0

    .line 299
    :goto_12
    invoke-virtual {v6, v4, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/g;JZ)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 300
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/g8;->m:J

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 301
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    .line 302
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Data loss. Failed to insert raw event metadata. appId"

    .line 303
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r0$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 304
    invoke-virtual {v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    :cond_35
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->v()V

    .line 306
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    const/4 v3, 0x2

    .line 307
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->a(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 308
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Event recorded"

    .line 310
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v5

    .line 311
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/d3;->a(Lcom/google/android/gms/measurement/internal/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 312
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    .line 314
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    .line 316
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 317
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    goto :goto_15

    :goto_14
    throw v2

    :goto_15
    goto :goto_14
.end method

.method private final e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/a4;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/j4;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r8;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->d(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r8;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 20
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 22
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->o:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 25
    :cond_4
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->i:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->n()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_5

    .line 26
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->i:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->d(J)V

    const/4 v1, 0x1

    .line 27
    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 29
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->f(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 30
    :cond_6
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_7

    .line 31
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->c(J)V

    const/4 v1, 0x1

    .line 32
    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->h:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 33
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 34
    :cond_8
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->j:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->o()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_9

    .line 35
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->j:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->e(J)V

    const/4 v1, 0x1

    .line 36
    :cond_9
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->d()Z

    move-result v4

    if-eq v3, v4, :cond_a

    .line 37
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->a(Z)V

    const/4 v1, 0x1

    .line 38
    :cond_a
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->k:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->h(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 41
    :cond_b
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->p:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->C()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_c

    .line 42
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->p:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->p(J)V

    const/4 v1, 0x1

    .line 43
    :cond_c
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->s:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->D()Z

    move-result v4

    if-eq v3, v4, :cond_d

    .line 44
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->s:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->b(Z)V

    const/4 v1, 0x1

    .line 45
    :cond_d
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->t:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->E()Z

    move-result v4

    if-eq v3, v4, :cond_e

    .line 46
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->t:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->c(Z)V

    const/4 v1, 0x1

    .line 47
    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v3

    .line 48
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/j;->j0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 49
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->F()Ljava/lang/Boolean;

    move-result-object v4

    if-eq v3, v4, :cond_f

    .line 50
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    .line 51
    :cond_f
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->x:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->p()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    .line 53
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->x:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->f(J)V

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_11

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    :cond_11
    return-object v0
.end method

.method private final r()Lcom/google/android/gms/measurement/internal/m3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->d:Lcom/google/android/gms/measurement/internal/m3;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final s()Lcom/google/android/gms/measurement/internal/c8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->e:Lcom/google/android/gms/measurement/internal/c8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->e:Lcom/google/android/gms/measurement/internal/c8;

    return-object v0
.end method

.method private final t()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/o3;->i:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f5;->j()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/r8;->r()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o3;->i:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 9
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final u()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final v()V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->y()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->m0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 9
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    sub-long/2addr v1, v7

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 11
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->a()V

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->s()Lcom/google/android/gms/measurement/internal/c8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c8;->s()V

    return-void

    .line 17
    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    .line 18
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->r()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->u()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    .line 21
    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->F:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e9;->C()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e9;->x()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    .line 25
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v10

    .line 26
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/z8;->p()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 28
    sget-object v10, Lcom/google/android/gms/measurement/internal/j;->A:Lcom/google/android/gms/measurement/internal/w2;

    .line 29
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 31
    :cond_6
    sget-object v10, Lcom/google/android/gms/measurement/internal/j;->z:Lcom/google/android/gms/measurement/internal/w2;

    .line 32
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 33
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 34
    :cond_7
    sget-object v10, Lcom/google/android/gms/measurement/internal/j;->y:Lcom/google/android/gms/measurement/internal/w2;

    .line 35
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 37
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    .line 38
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v12

    .line 39
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v14

    .line 40
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/o3;->f:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v14

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/e9;->z()J

    move-result-wide v9

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e9;->A()J

    move-result-wide v6

    .line 43
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v8, v3

    goto/16 :goto_5

    :cond_9
    sub-long/2addr v6, v1

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 45
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 46
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 47
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_a

    cmp-long v5, v8, v3

    if-lez v5, :cond_a

    .line 48
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 49
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/n8;->a(JJ)Z

    move-result v5

    if-nez v5, :cond_b

    add-long/2addr v8, v12

    goto :goto_3

    :cond_b
    move-wide v8, v10

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    cmp-long v5, v1, v6

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    .line 50
    sget-object v7, Lcom/google/android/gms/measurement/internal/j;->H:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v10, 0x0

    .line 51
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 52
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 53
    sget-object v12, Lcom/google/android/gms/measurement/internal/j;->G:Lcom/google/android/gms/measurement/internal/w2;

    .line 54
    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 55
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_e

    .line 56
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->a()V

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->s()Lcom/google/android/gms/measurement/internal/c8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c8;->s()V

    return-void

    .line 60
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->s()Z

    move-result v1

    if-nez v1, :cond_f

    .line 61
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->b()V

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->s()Lcom/google/android/gms/measurement/internal/c8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c8;->s()V

    return-void

    .line 65
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o3;->g:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v1

    .line 67
    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->w:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v6, 0x0

    .line 68
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/n8;->a(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    .line 71
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 72
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->a()V

    .line 73
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_11

    .line 75
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->B:Lcom/google/android/gms/measurement/internal/w2;

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 78
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    .line 80
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 82
    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->s()Lcom/google/android/gms/measurement/internal/c8;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/c8;->a(J)V

    return-void

    .line 85
    :cond_12
    :goto_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->a()V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->s()Lcom/google/android/gms/measurement/internal/c8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c8;->s()V

    return-void
.end method

.method private final w()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->n:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/g8;->r:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final x()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->F0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->t:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 9
    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->u:Ljava/nio/channels/FileChannel;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->u:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->t:Ljava/nio/channels/FileLock;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->t:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final y()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final z()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/util/e;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final a(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 682
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 683
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    const/4 v1, 0x0

    .line 685
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 686
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 687
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    .line 688
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 689
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 690
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 691
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/o3;->f:Lcom/google/android/gms/measurement/internal/t3;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 692
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    .line 693
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 694
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    .line 695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->s()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 697
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 699
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 700
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 701
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    .line 702
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 703
    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 704
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 705
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 707
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->w:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->w:Ljava/util/List;

    .line 708
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 709
    :cond_3
    throw p3

    .line 710
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 711
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    .line 712
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->w:Ljava/util/List;

    .line 713
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j3;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 714
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->l()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 715
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/g8;->x:J

    .line 716
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    .line 717
    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 718
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 719
    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 720
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    .line 722
    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    .line 723
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 724
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/g8;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 725
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p3

    .line 726
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 728
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 729
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/o3;->f:Lcom/google/android/gms/measurement/internal/t3;

    .line 730
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    .line 731
    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 732
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 733
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o3;->g:Lcom/google/android/gms/measurement/internal/t3;

    .line 734
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    .line 735
    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 736
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/util/List;)V

    .line 737
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 738
    :goto_3
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/g8;->r:Z

    .line 739
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    :catchall_1
    move-exception p1

    .line 740
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/g8;->r:Z

    .line 741
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method final a(Lcom/google/android/gms/measurement/internal/h8;)V
    .locals 0

    .line 1001
    iget p1, p0, Lcom/google/android/gms/measurement/internal/g8;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/g8;->o:I

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 67
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 71
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 72
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzai;->h:J

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 74
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v4, :cond_1

    .line 75
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 76
    :cond_1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v4

    .line 77
    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->w0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->y:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 79
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzah;->j()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 81
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzai;->h:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzai;->g:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 85
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 87
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    .line 88
    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_4

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 93
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 94
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 95
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    .line 97
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 98
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 99
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzq;

    if-eqz v8, :cond_5

    .line 100
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v9

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 102
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v14

    .line 103
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 104
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v14

    .line 105
    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzq;->k:Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v9, :cond_6

    .line 107
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzq;->k:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 108
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/e9;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_2

    .line 109
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    .line 110
    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_8

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    .line 115
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 116
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 117
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    .line 119
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 120
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 121
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzq;

    if-eqz v9, :cond_9

    .line 123
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v10

    .line 124
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 125
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v15

    .line 126
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 127
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v15

    .line 128
    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v5, :cond_a

    .line 131
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/e9;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_4

    .line 133
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_c

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzai;

    .line 134
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    .line 135
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    .line 136
    invoke-static {v3}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_d

    .line 140
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    .line 141
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 142
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f5;->i()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 145
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_6

    :cond_d
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    .line 147
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 148
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 149
    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzq;

    if-eqz v15, :cond_e

    .line 151
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 152
    new-instance v10, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    .line 153
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/o8;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 155
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 157
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 158
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 159
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 160
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 162
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 163
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v7

    .line 164
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 165
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v4, :cond_10

    .line 167
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/o8;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    const/4 v4, 0x1

    .line 169
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/zzq;)Z

    const/4 v13, 0x0

    goto/16 :goto_7

    .line 171
    :cond_11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 172
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_12

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzai;

    .line 173
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_9

    .line 174
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception v0

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzai;Ljava/lang/String;)V
    .locals 31
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 38
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 39
    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/a4;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 40
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 46
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 47
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzn;

    move-object v2, v14

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v6

    .line 52
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->m()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->n()J

    move-result-wide v9

    .line 54
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->o()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 55
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/a4;->d()Z

    move-result v16

    move-object/from16 v30, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    .line 56
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->b()Ljava/lang/String;

    move-result-object v16

    .line 57
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->C()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 58
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->D()Z

    move-result v22

    .line 59
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->E()Z

    move-result v23

    const/16 v24, 0x0

    .line 60
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v25

    .line 61
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->F()Ljava/lang/Boolean;

    move-result-object v26

    .line 62
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->p()J

    move-result-wide v27

    .line 63
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/a4;->G()Ljava/util/List;

    move-result-object v29

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;)V

    move-object/from16 v2, v30

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 65
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 925
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 927
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 928
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v0, :cond_1

    .line 929
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    .line 931
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/r8;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    .line 932
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    .line 933
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    .line 934
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 935
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 936
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v2

    .line 937
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v5, "_ev"

    .line 938
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 939
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v3

    .line 940
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/r8;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 941
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    .line 942
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    .line 943
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 944
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 945
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 946
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 947
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 948
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v6

    .line 949
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v9, "_ev"

    .line 950
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 951
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    .line 952
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    .line 953
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/r8;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 954
    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 955
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v1

    .line 956
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 957
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzjn;->g:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzjn;->j:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 958
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v8, "_sno"

    .line 959
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/e9;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 960
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_8

    .line 961
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 962
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    .line 963
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    .line 964
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 965
    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v3

    .line 966
    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/j;->e0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 967
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v8, "_s"

    .line 968
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 969
    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/f;->c:J

    .line 970
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 971
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 972
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 973
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzjn;

    .line 974
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 976
    :cond_b
    new-instance v1, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzjn;->j:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzjn;->g:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 977
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 978
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    .line 979
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 980
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 981
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 982
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 983
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    .line 984
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/o8;)Z

    move-result p1

    .line 985
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->v()V

    if-eqz p1, :cond_c

    .line 986
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 987
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "User property set"

    .line 988
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    .line 989
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 990
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 991
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 992
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 993
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 994
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 995
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    .line 997
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 998
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception p1

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 873
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 874
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->w:Ljava/util/List;

    .line 875
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 877
    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 878
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 879
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 880
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 881
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 882
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 883
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 884
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 885
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 886
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 887
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 888
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 889
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 890
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 891
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    .line 893
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 894
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 895
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzn;->s:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzn;->t:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzn;->q:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    move-object v1, p0

    .line 896
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/g8;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    .line 897
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-eqz p1, :cond_2

    .line 898
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/g8;->c(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1027
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/g8;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1029
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 1035
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 1036
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1037
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v0, :cond_1

    .line 1038
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 1039
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzq;)V

    const/4 p1, 0x0

    .line 1040
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    .line 1041
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 1042
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e9;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1043
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v2

    .line 1045
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1046
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    .line 1047
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    .line 1048
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1049
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    if-eqz v3, :cond_3

    .line 1050
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    .line 1051
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->h:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->h:J

    .line 1052
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->l:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->l:J

    .line 1053
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->j:Ljava/lang/String;

    .line 1054
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1055
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    .line 1056
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzjn;->g:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1057
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjn;->j:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1059
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzq;->h:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1060
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjn;->j:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1061
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    const/4 p1, 0x1

    .line 1062
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    if-eqz v1, :cond_6

    .line 1063
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1064
    new-instance v9, Lcom/google/android/gms/measurement/internal/o8;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzjn;->g:J

    .line 1065
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/o8;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1067
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 1069
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    .line 1070
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 1071
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1072
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 1074
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1075
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    .line 1076
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/o8;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    .line 1077
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1078
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz p1, :cond_6

    .line 1079
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->m:Lcom/google/android/gms/measurement/internal/zzai;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->h:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;J)V

    .line 1080
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1081
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1082
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 1083
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 1084
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 1085
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1086
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v0

    .line 1087
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1088
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 1089
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 1090
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1091
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 1092
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    .line 1093
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjn;->j()Ljava/lang/Object;

    move-result-object v0

    .line 1094
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1095
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception p1

    .line 1097
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 841
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 842
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->n:Ljava/util/List;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 783
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 784
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 785
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 789
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 790
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 791
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 792
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 793
    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p4

    .line 794
    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/a4;->i(J)V

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 796
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p4

    .line 797
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/e4;->c(Ljava/lang/String;)V

    .line 799
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 800
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o3;->f:Lcom/google/android/gms/measurement/internal/t3;

    .line 801
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    .line 802
    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 803
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 804
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o3;->g:Lcom/google/android/gms/measurement/internal/t3;

    .line 805
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    .line 806
    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 807
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 808
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 809
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 810
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 811
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/e4;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 812
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 813
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 814
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 815
    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/e4;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z0;

    move-result-object p5

    if-nez p5, :cond_d

    .line 816
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/e4;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 817
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 818
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 819
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 820
    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    .line 821
    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a4;->h(J)V

    .line 822
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    if-ne p2, v5, :cond_e

    .line 823
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 824
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 825
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 826
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 828
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 829
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 830
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j3;->s()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->u()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 832
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->l()V

    goto :goto_7

    .line 833
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    .line 834
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 835
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 836
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 837
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 838
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 839
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->q:Z

    .line 840
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    throw p1
.end method

.method final a(Z)V
    .locals 0

    .line 1098
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/d4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    return-object v0
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 331
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v0, :cond_1

    .line 333
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 335
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->j0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    const-string v1, "User property removed"

    const-string v2, "Removing user property"

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    const-string v3, "_npa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 337
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 339
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjn;

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    .line 342
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    .line 346
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 347
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 350
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->v()V

    .line 353
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 354
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    .line 355
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    .line 356
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception p1

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    .line 362
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 363
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 366
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->v()V

    .line 369
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 370
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    .line 371
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    .line 372
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_1
    move-exception p1

    .line 375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 376
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/g8;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 378
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 384
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v0, :cond_1

    .line 386
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 388
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e9;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 390
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 392
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v4

    .line 393
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e9;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzq;->i:Z

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e9;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 399
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v2, :cond_3

    .line 400
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzai;->f:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzah;->j()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v3, v1

    .line 401
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v1

    .line 402
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzai;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzq;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzq;->o:Lcom/google/android/gms/measurement/internal/zzai;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzai;->h:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 403
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_0

    .line 405
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p2

    .line 406
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzq;->e:Ljava/lang/String;

    .line 407
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 409
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzq;->g:Lcom/google/android/gms/measurement/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjn;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception p1

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw p1
.end method

.method protected final c()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d4;->g()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->y()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    return-void
.end method

.method final c(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sys"

    const-string v4, "_pfo"

    const-string v5, "_uwa"

    const-string v0, "app_id=?"

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    .line 18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 19
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/a4;->h(J)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/e9;->a(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->h()Lcom/google/android/gms/measurement/internal/e4;

    move-result-object v6

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/e4;->d(Ljava/lang/String;)V

    .line 22
    :cond_1
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->l:Z

    if-nez v6, :cond_2

    .line 23
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    return-void

    .line 24
    :cond_2
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->q:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_3

    .line 25
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v9

    .line 27
    :cond_3
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 28
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/j;->j0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 29
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->t()V

    .line 31
    :cond_4
    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->r:I

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v13, :cond_5

    .line 32
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v11

    .line 33
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 34
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 36
    invoke-virtual {v11, v14, v12, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 37
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e9;->s()V

    .line 38
    :try_start_0
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v11

    .line 39
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/j;->j0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v14, "_npa"

    .line 41
    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/e9;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v11, "auto"

    .line 42
    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/o8;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 44
    :cond_6
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    if-eqz v11, :cond_9

    .line 45
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzjn;

    const-string v16, "_npa"

    .line 46
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->w:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    const-wide/16 v17, 0x1

    goto :goto_0

    :cond_7
    const-wide/16 v17, 0x0

    :goto_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, v16

    move-object/from16 v19, v3

    move-object v8, v14

    const/4 v3, 0x1

    move-wide v13, v9

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    .line 47
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/o8;->e:Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzjn;->h:Ljava/lang/Long;

    .line 48
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 49
    :cond_8
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    :cond_9
    move-object/from16 v19, v3

    move-object v8, v14

    const/4 v3, 0x1

    if-eqz v8, :cond_b

    .line 50
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzjn;

    const-string v12, "_npa"

    const/4 v15, 0x0

    const-string v16, "auto"

    move-object v11, v7

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    :cond_a
    move-object/from16 v19, v3

    const/4 v3, 0x1

    .line 52
    :cond_b
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 53
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    .line 54
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->c()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->v:Ljava/lang/String;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->g()Ljava/lang/String;

    move-result-object v14

    .line 57
    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/r8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 58
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v11

    .line 59
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v11

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 61
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->f()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 64
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 65
    invoke-static {v7}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e9;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    :try_start_2
    aput-object v7, v13, v15

    const-string v14, "events"

    .line 67
    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v8, "user_attributes"

    .line 68
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "conditional_properties"

    .line 69
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "apps"

    .line 70
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events"

    .line 71
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events_metadata"

    .line 72
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "event_filters"

    .line 73
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "property_filters"

    .line 74
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "audience_filter_values"

    .line 75
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_c

    .line 76
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v7, v12}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    .line 77
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/f5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    const-string v11, "Error deleting application data. appId, error"

    .line 79
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v11, v7, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_d
    const/4 v15, 0x0

    :goto_4
    if-eqz v7, :cond_f

    .line 80
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/32 v13, -0x80000000

    const-string v0, "_pv"

    cmp-long v8, v11, v13

    if-eqz v8, :cond_e

    .line 81
    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->l()J

    move-result-wide v11

    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->n:J

    cmp-long v8, v11, v13

    if-eqz v8, :cond_f

    .line 82
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v8}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    const/4 v8, 0x0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    .line 86
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 88
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 89
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a4;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v11}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 91
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    .line 92
    :cond_10
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/g8;->e(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/a4;

    if-nez v6, :cond_11

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v11, "_f"

    .line 94
    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    goto :goto_6

    :cond_11
    if-ne v6, v3, :cond_12

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const-string v11, "_v"

    .line 96
    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_22

    const-wide/32 v11, 0x36ee80

    .line 97
    div-long v13, v9, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    mul-long v13, v13, v11

    const-string v0, "_dac"

    const-string v7, "_r"

    const-string v15, "_c"

    const-string v12, "_et"

    if-nez v6, :cond_1d

    .line 98
    :try_start_5
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzjn;

    const-string v16, "_fot"

    .line 99
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v20, "auto"

    move-object v11, v6

    move-object v13, v12

    move-object/from16 v12, v16

    move-object v3, v13

    move-wide v13, v9

    move-object v8, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 101
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 102
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->f:Ljava/lang/String;

    .line 103
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/z8;->l(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 105
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    .line 106
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->h()Lcom/google/android/gms/measurement/internal/u3;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 107
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/u3;->a(Ljava/lang/String;)V

    .line 108
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 110
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    .line 111
    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v7, 0x0

    .line 113
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v19

    .line 115
    invoke-virtual {v6, v15, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v11, "_sysu"

    .line 116
    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v7

    .line 118
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/z8;->r(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-wide/16 v7, 0x1

    .line 119
    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7

    :cond_14
    const-wide/16 v7, 0x1

    .line 120
    :goto_7
    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->u:Z

    if-eqz v11, :cond_15

    .line 121
    invoke-virtual {v6, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_16

    .line 124
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v5, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 126
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 127
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_d

    .line 128
    :cond_16
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    .line 130
    :try_start_7
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v7

    .line 131
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    const-string v8, "Package info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 132
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 133
    invoke-virtual {v7, v8, v11, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_19

    .line 134
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-eqz v13, :cond_19

    .line 135
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v7, v11

    if-eqz v0, :cond_17

    const-wide/16 v7, 0x1

    .line 136
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    goto :goto_9

    :cond_17
    const/4 v0, 0x1

    .line 137
    :goto_9
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzjn;

    const-string v12, "_fi"

    if-eqz v0, :cond_18

    const-wide/16 v7, 0x1

    goto :goto_a

    :cond_18
    const-wide/16 v7, 0x0

    .line 138
    :goto_a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v16, "auto"

    move-object v11, v5

    move-wide v13, v9

    move-object v7, v15

    move-object v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :cond_19
    move-object v7, v15

    .line 140
    :goto_b
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/common/o/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    :catch_3
    move-exception v0

    .line 142
    :try_start_9
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 144
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 145
    invoke-virtual {v5, v8, v11, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_1b

    .line 146
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_1a

    const-wide/16 v11, 0x1

    .line 147
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    :cond_1a
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    const-string v0, "_sysu"

    const-wide/16 v7, 0x1

    .line 149
    invoke-virtual {v6, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_1b
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 151
    invoke-static {v5}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f5;->g()V

    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    const-string v7, "first_open_count"

    .line 154
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/measurement/internal/e9;->i(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-ltz v0, :cond_1c

    .line 155
    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    :cond_1c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_f"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v6}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 157
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_f

    :cond_1d
    move-object v3, v12

    move-object v8, v15

    const/4 v4, 0x1

    if-ne v6, v4, :cond_20

    .line 158
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjn;

    const-string v12, "_fvt"

    .line 159
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v4

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzjn;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 163
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 164
    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 166
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v5

    .line 167
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/z8;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-wide/16 v5, 0x1

    .line 168
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_e

    :cond_1e
    const-wide/16 v5, 0x1

    .line 169
    :goto_e
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->u:Z

    if-eqz v7, :cond_1f

    .line 170
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    :cond_1f
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_v"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v4}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 172
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 173
    :cond_20
    :goto_f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 174
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/j;->i0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v4, 0x1

    .line 176
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 177
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v3

    .line 178
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z8;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    .line 179
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    :cond_21
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_e"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 181
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_10

    .line 182
    :cond_22
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->m:Z

    if-eqz v0, :cond_23

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzai;

    const-string v12, "_cd"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;Ljava/lang/String;J)V

    .line 185
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 186
    :cond_23
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->v()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    return-void

    :catchall_0
    move-exception v0

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->t()V

    throw v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/z8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    return-object v0
.end method

.method final d(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/measurement/internal/k8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/k8;-><init>(Lcom/google/android/gms/measurement/internal/g8;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 5
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 9
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/n8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->g:Lcom/google/android/gms/measurement/internal/n8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->g:Lcom/google/android/gms/measurement/internal/n8;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/x8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->f:Lcom/google/android/gms/measurement/internal/x8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->f:Lcom/google/android/gms/measurement/internal/x8;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/e9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->c:Lcom/google/android/gms/measurement/internal/e9;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->c:Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/e4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->a:Lcom/google/android/gms/measurement/internal/e4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->a:Lcom/google/android/gms/measurement/internal/e4;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/j3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->b:Lcom/google/android/gms/measurement/internal/j3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->b:Lcom/google/android/gms/measurement/internal/j3;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/o6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->h:Lcom/google/android/gms/measurement/internal/o6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/g8;->b(Lcom/google/android/gms/measurement/internal/h8;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->h:Lcom/google/android/gms/measurement/internal/o6;

    return-object v0
.end method

.method final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final l()V
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzae()Lcom/google/android/gms/measurement/internal/y8;

    .line 5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u6;->E()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 16
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/g8;->m:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 20
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 21
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 22
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 26
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j3;->s()Z

    move-result v3

    if-nez v3, :cond_5

    .line 27
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    .line 32
    :cond_5
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    .line 34
    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->u()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    .line 35
    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/g8;->a(Ljava/lang/String;J)Z

    .line 36
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 37
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/o3;->e:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/t3;->a()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_6

    .line 38
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 41
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e9;->w()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_14

    .line 44
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/g8;->x:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e9;->D()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/g8;->x:J

    .line 46
    :cond_7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v6

    .line 47
    sget-object v7, Lcom/google/android/gms/measurement/internal/j;->l:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/z8;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)I

    move-result v6

    .line 48
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v7

    .line 49
    sget-object v8, Lcom/google/android/gms/measurement/internal/j;->m:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/z8;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/e9;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 52
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 53
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/r0;

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r0;->Y()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r0;->Y()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_9
    move-object v7, v9

    :goto_1
    if-eqz v7, :cond_b

    const/4 v8, 0x0

    .line 56
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 57
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/r0;

    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/r0;->Y()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 59
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/r0;->Y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 60
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_b
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q0;->o()Lcom/google/android/gms/internal/measurement/q0$a;

    move-result-object v7

    .line 62
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 63
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->v()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 65
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v11

    .line 66
    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/z8;->d(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_4

    :cond_c
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_f

    .line 67
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/r0;

    .line 68
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/b4;->i()Lcom/google/android/gms/internal/measurement/b4$a;

    move-result-object v13

    .line 69
    check-cast v13, Lcom/google/android/gms/internal/measurement/r0$a;

    .line 70
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v14

    .line 72
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/z8;->k()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/r0$a;->g(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 73
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/measurement/r0$a;->a(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 74
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->zzae()Lcom/google/android/gms/measurement/internal/y8;

    .line 75
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/measurement/r0$a;->b(Z)Lcom/google/android/gms/internal/measurement/r0$a;

    if-nez v11, :cond_d

    .line 76
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/r0$a;->x()Lcom/google/android/gms/internal/measurement/r0$a;

    .line 77
    :cond_d
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v14

    .line 78
    sget-object v15, Lcom/google/android/gms/measurement/internal/j;->r0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v14, v5, v15}, Lcom/google/android/gms/measurement/internal/z8;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 79
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v14, Lcom/google/android/gms/internal/measurement/r0;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/j2;->e()[B

    move-result-object v14

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/n8;->a([B)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/r0$a;->l(J)Lcom/google/android/gms/internal/measurement/r0$a;

    .line 81
    :cond_e
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/q0$a;->a(Lcom/google/android/gms/internal/measurement/r0$a;)Lcom/google/android/gms/internal/measurement/q0$a;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 82
    :cond_f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v6

    const/4 v11, 0x2

    .line 83
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/f3;->a(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q0;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/n8;->a(Lcom/google/android/gms/internal/measurement/q0;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_10
    move-object v6, v9

    .line 85
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->e()Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/b4$a;->t()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/b4;

    check-cast v11, Lcom/google/android/gms/internal/measurement/q0;

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/j2;->e()[B

    move-result-object v14

    .line 87
    sget-object v11, Lcom/google/android/gms/measurement/internal/j;->v:Lcom/google/android/gms/measurement/internal/w2;

    .line 88
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/w2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 89
    check-cast v9, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11

    const/4 v11, 0x1

    goto :goto_7

    :cond_11
    const/4 v11, 0x0

    :goto_7
    invoke-static {v11}, Lcom/google/android/gms/common/internal/m;->a(Z)V

    .line 92
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    if-eqz v11, :cond_12

    .line 93
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v10

    .line 94
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v10

    const-string v11, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 95
    :cond_12
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/g8;->v:Ljava/util/List;

    .line 96
    :goto_8
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v10

    .line 97
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/o3;->f:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    const-string v3, "?"

    if-lez v8, :cond_13

    .line 98
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/q0$a;->a(I)Lcom/google/android/gms/internal/measurement/r0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r0;->s()Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_13
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/g8;->r:Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->i()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/i8;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/i8;-><init>(Lcom/google/android/gms/measurement/internal/g8;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j3;->g()V

    .line 105
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/h8;->q()V

    .line 106
    invoke-static {v13}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v14}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/j3;->b()Lcom/google/android/gms/measurement/internal/d4;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/n3;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/n3;-><init>(Lcom/google/android/gms/measurement/internal/j3;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/l3;)V

    .line 110
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d4;->b(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 111
    :catch_0
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/f3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 114
    invoke-virtual {v0, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 115
    :cond_14
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/g8;->x:J

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/google/android/gms/measurement/internal/z8;->u()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/e9;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->g()Lcom/google/android/gms/measurement/internal/e9;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/e9;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a4;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 120
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/g8;->a(Lcom/google/android/gms/measurement/internal/a4;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    :cond_15
    :goto_9
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    return-void

    :catchall_0
    move-exception v0

    .line 123
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/g8;->s:Z

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g8;->w()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method final m()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/g8;->l:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g8;->k()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->m0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->u:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/g8;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->w()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y2;->C()I

    move-result v2

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->z()V

    if-le v0, v2, :cond_1

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Panic: can\'t downgrade version. Previous, current version"

    .line 18
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ge v0, v2, :cond_3

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->u:Ljava/nio/channels/FileChannel;

    .line 20
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/g8;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->y()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgraded. Previous, current version"

    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgrade failed. Previous, current version"

    .line 28
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g8;->k:Z

    if-nez v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v0

    .line 31
    sget-object v2, Lcom/google/android/gms/measurement/internal/j;->m0:Lcom/google/android/gms/measurement/internal/w2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z8;->a(Lcom/google/android/gms/measurement/internal/w2;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v2, "This instance being marked as an uploader"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 34
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/g8;->k:Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g8;->v()V

    :cond_4
    return-void
.end method

.method final n()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/g8;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/g8;->p:I

    return-void
.end method

.method final o()Lcom/google/android/gms/measurement/internal/j4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/measurement/internal/d3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->C()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/measurement/internal/r8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/r8;

    move-result-object v0

    return-object v0
.end method

.method public final zzab()Lcom/google/android/gms/measurement/internal/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    return-object v0
.end method

.method public final zzae()Lcom/google/android/gms/measurement/internal/y8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g8;->i:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzae()Lcom/google/android/gms/measurement/internal/y8;

    move-result-object v0

    return-object v0
.end method
