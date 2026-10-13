.class Lcom/google/firebase/crashlytics/d/h/k;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/h/k$b0;,
        Lcom/google/firebase/crashlytics/d/h/k$e0;,
        Lcom/google/firebase/crashlytics/d/h/k$c0;,
        Lcom/google/firebase/crashlytics/d/h/k$d0;,
        Lcom/google/firebase/crashlytics/d/h/k$y;,
        Lcom/google/firebase/crashlytics/d/h/k$a0;,
        Lcom/google/firebase/crashlytics/d/h/k$x;,
        Lcom/google/firebase/crashlytics/d/h/k$f0;,
        Lcom/google/firebase/crashlytics/d/h/k$z;
    }
.end annotation


# static fields
.field static final A:Ljava/io/FilenameFilter;

.field static final B:Ljava/io/FilenameFilter;

.field static final C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:[Ljava/lang/String;

.field static final z:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/crashlytics/d/h/t;

.field private final d:Lcom/google/firebase/crashlytics/d/h/n;

.field private final e:Lcom/google/firebase/crashlytics/d/h/j0;

.field private final f:Lcom/google/firebase/crashlytics/d/h/i;

.field private final g:Lcom/google/firebase/crashlytics/d/j/c;

.field private final h:Lcom/google/firebase/crashlytics/d/h/y;

.field private final i:Lcom/google/firebase/crashlytics/d/k/h;

.field private final j:Lcom/google/firebase/crashlytics/d/h/b;

.field private final k:Lcom/google/firebase/crashlytics/d/m/b$b;

.field private final l:Lcom/google/firebase/crashlytics/d/h/k$b0;

.field private final m:Lcom/google/firebase/crashlytics/d/i/b;

.field private final n:Lcom/google/firebase/crashlytics/d/m/a;

.field private final o:Lcom/google/firebase/crashlytics/d/m/b$a;

.field private final p:Lcom/google/firebase/crashlytics/d/a;

.field private final q:Lcom/google/firebase/crashlytics/d/p/d;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/google/firebase/crashlytics/d/f/a;

.field private final t:Lcom/google/firebase/crashlytics/d/h/h0;

.field private u:Lcom/google/firebase/crashlytics/d/h/r;

.field v:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field w:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field x:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$k;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/d/h/k$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->z:Ljava/io/FilenameFilter;

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/j;->a()Ljava/io/FilenameFilter;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->A:Ljava/io/FilenameFilter;

    .line 3
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$p;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/k$p;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->B:Ljava/io/FilenameFilter;

    .line 4
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$q;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/k$q;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->C:Ljava/util/Comparator;

    .line 5
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$r;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/k$r;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->D:Ljava/util/Comparator;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->E:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->F:Ljava/util/Map;

    const-string v0, "SessionUser"

    const-string v1, "SessionApp"

    const-string v2, "SessionOS"

    const-string v3, "SessionDevice"

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/k;->G:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/i;Lcom/google/firebase/crashlytics/d/j/c;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/h/t;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/h/n;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/m/a;Lcom/google/firebase/crashlytics/d/m/b$b;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/f/a;Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v2, p10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v5, Le/i/b/b/d/i;

    invoke-direct {v5}, Le/i/b/b/d/i;-><init>()V

    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->v:Le/i/b/b/d/i;

    .line 4
    new-instance v5, Le/i/b/b/d/i;

    invoke-direct {v5}, Le/i/b/b/d/i;-><init>()V

    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->w:Le/i/b/b/d/i;

    .line 5
    new-instance v5, Le/i/b/b/d/i;

    invoke-direct {v5}, Le/i/b/b/d/i;-><init>()V

    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->x:Le/i/b/b/d/i;

    .line 6
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->b:Landroid/content/Context;

    move-object v5, p2

    .line 8
    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    move-object v5, p3

    .line 9
    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->g:Lcom/google/firebase/crashlytics/d/j/c;

    move-object v5, p4

    .line 10
    iput-object v5, v0, Lcom/google/firebase/crashlytics/d/h/k;->h:Lcom/google/firebase/crashlytics/d/h/y;

    move-object/from16 v7, p5

    .line 11
    iput-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->c:Lcom/google/firebase/crashlytics/d/h/t;

    .line 12
    iput-object v3, v0, Lcom/google/firebase/crashlytics/d/h/k;->i:Lcom/google/firebase/crashlytics/d/k/h;

    move-object/from16 v7, p7

    .line 13
    iput-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->d:Lcom/google/firebase/crashlytics/d/h/n;

    .line 14
    iput-object v4, v0, Lcom/google/firebase/crashlytics/d/h/k;->j:Lcom/google/firebase/crashlytics/d/h/b;

    if-eqz v2, :cond_0

    .line 15
    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->k:Lcom/google/firebase/crashlytics/d/m/b$b;

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->q()Lcom/google/firebase/crashlytics/d/m/b$b;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->k:Lcom/google/firebase/crashlytics/d/m/b$b;

    :goto_0
    move-object/from16 v2, p11

    .line 17
    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    .line 18
    iget-object v2, v4, Lcom/google/firebase/crashlytics/d/h/b;->g:Lcom/google/firebase/crashlytics/d/q/b;

    invoke-interface {v2}, Lcom/google/firebase/crashlytics/d/q/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->r:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 19
    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->s:Lcom/google/firebase/crashlytics/d/f/a;

    .line 20
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/d/h/j0;-><init>()V

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    .line 21
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/k$b0;

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/d/h/k$b0;-><init>(Lcom/google/firebase/crashlytics/d/k/h;)V

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->l:Lcom/google/firebase/crashlytics/d/h/k$b0;

    .line 22
    new-instance v2, Lcom/google/firebase/crashlytics/d/i/b;

    iget-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->l:Lcom/google/firebase/crashlytics/d/h/k$b0;

    invoke-direct {v2, p1, v7}, Lcom/google/firebase/crashlytics/d/i/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/i/b$b;)V

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    const/4 v2, 0x0

    if-nez p9, :cond_1

    .line 23
    new-instance v7, Lcom/google/firebase/crashlytics/d/m/a;

    new-instance v8, Lcom/google/firebase/crashlytics/d/h/k$c0;

    invoke-direct {v8, p0, v2}, Lcom/google/firebase/crashlytics/d/h/k$c0;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/k$k;)V

    invoke-direct {v7, v8}, Lcom/google/firebase/crashlytics/d/m/a;-><init>(Lcom/google/firebase/crashlytics/d/m/b$c;)V

    goto :goto_1

    :cond_1
    move-object/from16 v7, p9

    .line 24
    :goto_1
    iput-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->n:Lcom/google/firebase/crashlytics/d/m/a;

    .line 25
    new-instance v7, Lcom/google/firebase/crashlytics/d/h/k$d0;

    invoke-direct {v7, p0, v2}, Lcom/google/firebase/crashlytics/d/h/k$d0;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/k$k;)V

    iput-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->o:Lcom/google/firebase/crashlytics/d/m/b$a;

    .line 26
    new-instance v2, Lcom/google/firebase/crashlytics/d/p/a;

    const/16 v7, 0x400

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/firebase/crashlytics/d/p/d;

    new-instance v9, Lcom/google/firebase/crashlytics/d/p/c;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/google/firebase/crashlytics/d/p/c;-><init>(I)V

    aput-object v9, v8, v6

    invoke-direct {v2, v7, v8}, Lcom/google/firebase/crashlytics/d/p/a;-><init>(I[Lcom/google/firebase/crashlytics/d/p/d;)V

    iput-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->q:Lcom/google/firebase/crashlytics/d/p/d;

    .line 27
    iget-object v6, v0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    iget-object v7, v0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    iget-object v8, v0, Lcom/google/firebase/crashlytics/d/h/k;->q:Lcom/google/firebase/crashlytics/d/p/d;

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p13

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/y;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/i/b;Lcom/google/firebase/crashlytics/d/h/j0;Lcom/google/firebase/crashlytics/d/p/d;Lcom/google/firebase/crashlytics/d/o/e;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->t:Lcom/google/firebase/crashlytics/d/h/h0;

    return-void
.end method

.method static synthetic a(Ljava/util/Date;)J
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/m/d/b;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/m/d/b;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;[B)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/d;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/h/c0;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance p2, Lcom/google/firebase/crashlytics/d/h/b0;

    invoke-direct {p2, p3}, Lcom/google/firebase/crashlytics/d/h/b0;-><init>(Ljava/io/File;)V

    .line 233
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/d/h/b0;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 234
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/d/h/b0;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 235
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/f;

    const-string v1, "logs_file"

    const-string v2, "logs"

    invoke-direct {v0, v1, v2, p4}, Lcom/google/firebase/crashlytics/d/h/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 238
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->f()Ljava/io/File;

    move-result-object v0

    const-string v1, "crash_meta_file"

    const-string v2, "metadata"

    invoke-direct {p4, v1, v2, v0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 239
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 241
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->e()Ljava/io/File;

    move-result-object v0

    const-string v1, "session_meta_file"

    const-string v2, "session"

    invoke-direct {p4, v1, v2, v0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 242
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 244
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->a()Ljava/io/File;

    move-result-object v0

    const-string v1, "app_meta_file"

    const-string v2, "app"

    invoke-direct {p4, v1, v2, v0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 245
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 247
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->c()Ljava/io/File;

    move-result-object v0

    const-string v1, "device_meta_file"

    const-string v2, "device"

    invoke-direct {p4, v1, v2, v0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 248
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 250
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->b()Ljava/io/File;

    move-result-object v0

    const-string v1, "os_meta_file"

    const-string v2, "os"

    invoke-direct {p4, v1, v2, v0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 251
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance p4, Lcom/google/firebase/crashlytics/d/h/x;

    .line 253
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object p0

    const-string v0, "minidump_file"

    const-string v1, "minidump"

    invoke-direct {p4, v0, v1, p0}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 254
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance p0, Lcom/google/firebase/crashlytics/d/h/x;

    const-string p4, "user_meta_file"

    const-string v0, "user"

    invoke-direct {p0, p4, v0, p3}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance p0, Lcom/google/firebase/crashlytics/d/h/x;

    const-string p3, "keys_file"

    const-string p4, "keys"

    invoke-direct {p0, p3, p4, p1}, Lcom/google/firebase/crashlytics/d/h/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private a(IZ)V
    .locals 5

    add-int/lit8 v0, p2, 0x8

    .line 47
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/k;->d(I)V

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->w()[Ljava/io/File;

    move-result-object v0

    .line 49
    array-length v1, v0

    if-gt v1, p2, :cond_0

    .line 50
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    aget-object v1, v0, p2

    .line 52
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->j(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->c(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not finalize native session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 58
    :cond_1
    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a([Ljava/io/File;II)V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 59
    aget-object p1, v0, p1

    .line 60
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k;->t:Lcom/google/firebase/crashlytics/d/h/h0;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/k;->v()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/firebase/crashlytics/d/h/h0;->a(JLjava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Could not write app exception marker."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/h/j0;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$c;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/d/h/k$c;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/j0;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->r()V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/o/i/b;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/o/i/b;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/l/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/l/b;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Error closing session file stream in the presence of an exception"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/io/File;)V
    .locals 5

    const-string v0, "Failed to close file input stream."

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 218
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-static {v2, p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/InputStream;Lcom/google/firebase/crashlytics/d/l/c;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 221
    throw p0
.end method

.method private a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;)V
    .locals 10

    .line 209
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/k;->G:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 210
    new-instance v5, Lcom/google/firebase/crashlytics/d/h/k$z;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".cls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/firebase/crashlytics/d/h/k$z;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v5}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 212
    array-length v6, v5

    const-string v7, " data for session ID "

    if-nez v6, :cond_0

    .line 213
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 215
    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;Ljava/lang/Throwable;JLjava/lang/String;Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 132
    new-instance v5, Lcom/google/firebase/crashlytics/d/p/e;

    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->q:Lcom/google/firebase/crashlytics/d/p/d;

    move-object/from16 v2, p3

    invoke-direct {v5, v2, v1}, Lcom/google/firebase/crashlytics/d/p/e;-><init>(Ljava/lang/Throwable;Lcom/google/firebase/crashlytics/d/p/d;)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/e;->a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/h/e;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/e;->a()Ljava/lang/Float;

    move-result-object v17

    .line 136
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/e;->b()I

    move-result v18

    .line 137
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/h;->f(Landroid/content/Context;)Z

    move-result v19

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 139
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/h;->b()J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Landroid/content/Context;)J

    move-result-wide v6

    sub-long v20, v2, v6

    .line 140
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/lang/String;)J

    move-result-wide v22

    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    .line 142
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 143
    iget-object v7, v5, Lcom/google/firebase/crashlytics/d/p/e;->c:[Ljava/lang/StackTraceElement;

    .line 144
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->j:Lcom/google/firebase/crashlytics/d/h/b;

    iget-object v15, v2, Lcom/google/firebase/crashlytics/d/h/b;->b:Ljava/lang/String;

    .line 145
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/h/k;->h:Lcom/google/firebase/crashlytics/d/h/y;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/y;->b()Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p7, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    .line 147
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Thread;

    .line 148
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Thread;

    aput-object v10, v6, v2

    .line 150
    iget-object v10, v0, Lcom/google/firebase/crashlytics/d/h/k;->q:Lcom/google/firebase/crashlytics/d/p/d;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    invoke-interface {v10, v8}, Lcom/google/firebase/crashlytics/d/p/d;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    move-object v8, v6

    goto :goto_1

    :cond_1
    new-array v2, v2, [Ljava/lang/Thread;

    move-object v8, v2

    :goto_1
    const-string v2, "com.crashlytics.CollectCustomKeys"

    .line 151
    invoke-static {v1, v2, v3}, Lcom/google/firebase/crashlytics/d/h/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_2

    .line 153
    :cond_2
    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/j0;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 155
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v11, v1

    :goto_3
    const/16 v10, 0x8

    .line 156
    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    .line 157
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/i/b;->b()[B

    move-result-object v12

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object/from16 v6, p2

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v24

    .line 158
    invoke-static/range {v1 .. v23}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;JLjava/lang/String;Lcom/google/firebase/crashlytics/d/p/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;[BLandroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    .line 159
    iget-object v1, v0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/i/b;->a()V

    return-void
.end method

.method private static a(Lcom/google/firebase/crashlytics/d/l/c;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .line 201
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/h;->c:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 203
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 205
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {p0, v3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 208
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    const-string v5, "Error writting non-fatal to session."

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/firebase/crashlytics/d/o/i/b;Z)V
    .locals 8
    .param p1    # Lcom/google/firebase/crashlytics/d/o/i/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->k:Lcom/google/firebase/crashlytics/d/m/b$b;

    invoke-interface {v1, p1}, Lcom/google/firebase/crashlytics/d/m/b$b;->a(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/m/b;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->k()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 229
    iget-object v6, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->e:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/String;Ljava/io/File;)V

    .line 230
    new-instance v6, Lcom/google/firebase/crashlytics/d/m/c/d;

    sget-object v7, Lcom/google/firebase/crashlytics/d/h/k;->F:Ljava/util/Map;

    invoke-direct {v6, v5, v7}, Lcom/google/firebase/crashlytics/d/m/c/d;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 231
    iget-object v5, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v7, Lcom/google/firebase/crashlytics/d/h/k$e0;

    invoke-direct {v7, v0, v6, v1, p2}, Lcom/google/firebase/crashlytics/d/h/k$e0;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/m/c/c;Lcom/google/firebase/crashlytics/d/m/b;Z)V

    invoke-virtual {v5, v7}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/lang/Runnable;)Le/i/b/b/d/h;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Lcom/google/firebase/crashlytics/d/h/k$y;)V
    .locals 5
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/crashlytics/d/h/k$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Failed to close "

    const-string v1, "Failed to flush to append to "

    const/4 v2, 0x0

    .line 120
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v2

    .line 122
    invoke-interface {p1, v2}, Lcom/google/firebase/crashlytics/d/h/k$y;->a(Lcom/google/firebase/crashlytics/d/l/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 125
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 127
    throw p1
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 10

    .line 160
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting session parts for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionCrash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/d/h/k$z;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 163
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 164
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p2, v7, v2

    .line 165
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "Session %s has fatal exception: %s"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 166
    new-instance v4, Lcom/google/firebase/crashlytics/d/h/k$z;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/firebase/crashlytics/d/h/k$z;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v4}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 168
    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 169
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    .line 170
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v1

    const-string v1, "Session %s has non-fatal exceptions: %s"

    .line 171
    invoke-static {v8, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v7, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 173
    :cond_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No events present for session ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 174
    :cond_3
    :goto_2
    invoke-direct {p0, p2, v4, p3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object p3

    if-eqz v3, :cond_4

    .line 175
    aget-object v0, v0, v2

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 176
    :goto_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    .line 177
    :goto_4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing session part files for ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/d/h/k;->e(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->c([Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .locals 9

    const-string v0, "Failed to close CLS file"

    const-string v1, "Error flushing session file stream"

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->e()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->h()Ljava/io/File;

    move-result-object v4

    .line 180
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v5, 0x0

    .line 182
    :try_start_0
    new-instance v6, Lcom/google/firebase/crashlytics/d/l/b;

    invoke-direct {v6, v4, p2}, Lcom/google/firebase/crashlytics/d/l/b;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    invoke-static {v6}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v5

    .line 184
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Collecting SessionStart data for session ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {v5, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/io/File;)V

    const/4 p1, 0x4

    .line 186
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/k;->v()J

    move-result-wide v7

    invoke-virtual {v5, p1, v7, v8}, Lcom/google/firebase/crashlytics/d/l/c;->a(IJ)V

    const/4 p1, 0x5

    .line 187
    invoke-virtual {v5, p1, v3}, Lcom/google/firebase/crashlytics/d/l/c;->a(IZ)V

    const/16 p1, 0xb

    .line 188
    invoke-virtual {v5, p1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->d(II)V

    const/16 p1, 0xc

    const/4 v2, 0x3

    .line 189
    invoke-virtual {v5, p1, v2}, Lcom/google/firebase/crashlytics/d/l/c;->a(II)V

    .line 190
    invoke-direct {p0, v5, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;)V

    .line 191
    invoke-static {v5, p3, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 192
    invoke-static {v5, p4}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :cond_3
    invoke-static {v5, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 194
    invoke-static {v6, v0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v6, v5

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v6, v5

    .line 195
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write session file for session ID: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    invoke-static {v5, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v6}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/b;)V

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 198
    :goto_4
    invoke-static {v5, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 199
    invoke-static {v6, v0}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 200
    throw p1
.end method

.method private static a(Ljava/io/InputStream;Lcom/google/firebase/crashlytics/d/l/c;I)V
    .locals 2

    .line 222
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 223
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p2

    sub-int/2addr v1, v0

    .line 224
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a([B)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$z;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/crashlytics/d/h/k$z;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/crashlytics/d/h/k;->D:Ljava/util/Comparator;

    .line 73
    invoke-static {v0, v1, p2, p1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 9

    .line 128
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/m;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$h;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/crashlytics/d/h/k$h;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v2, "BeginSession"

    invoke-direct {p0, p1, v2, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    .line 131
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v1, p1, v0, p2, p3}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V
    .locals 7

    const-string v0, "Failed to close session "

    const-string v1, "Failed to flush to session "

    const-string v2, " file."

    const/4 v3, 0x0

    .line 112
    :try_start_0
    new-instance v4, Lcom/google/firebase/crashlytics/d/l/b;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lcom/google/firebase/crashlytics/d/l/b;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v3

    .line 114
    invoke-interface {p3, v3}, Lcom/google/firebase/crashlytics/d/h/k$y;->a(Lcom/google/firebase/crashlytics/d/l/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v3

    .line 117
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 119
    throw p1
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V
    .locals 14
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "Failed to close fatal exception file output stream."

    const-string v2, "Failed to flush to session begin file."

    const/4 v3, 0x0

    .line 101
    :try_start_0
    new-instance v4, Lcom/google/firebase/crashlytics/d/l/b;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SessionCrash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/firebase/crashlytics/d/l/b;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v3

    const-string v12, "crash"

    const/4 v13, 0x1

    move-object v6, p0

    move-object v7, v3

    move-object v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p4

    .line 103
    invoke-direct/range {v6 .. v13}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;Ljava/lang/Throwable;JLjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v3

    .line 104
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    const-string v6, "An error occurred in the fatal exception logger"

    invoke-virtual {v5, v6, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :goto_1
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 106
    invoke-static {v4, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 107
    :goto_2
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 108
    invoke-static {v4, v1}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 109
    throw v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$d;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/d/h/k$d;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    return-void
.end method

.method private a([Ljava/io/File;II)V
    .locals 5

    .line 62
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Closing open sessions."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 63
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 64
    aget-object v0, p1, p2

    .line 65
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0, v1, p3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([Ljava/io/File;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/google/firebase/crashlytics/d/h/k;->E:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting unknown file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 80
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming session file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".ae"

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/k;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/k;->d([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .locals 4

    .line 84
    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 85
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Trimming down to %d logged exceptions."

    .line 87
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;I)V

    .line 90
    new-instance p2, Lcom/google/firebase/crashlytics/d/h/k$z;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/crashlytics/d/h/k$z;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static b(Ljava/util/Date;)J
    .locals 4

    .line 14
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->c:Lcom/google/firebase/crashlytics/d/h/t;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/m/d/b;
    .locals 4

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    .line 35
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/google/firebase/crashlytics/d/m/d/c;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k;->g:Lcom/google/firebase/crashlytics/d/j/c;

    .line 37
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/m;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/google/firebase/crashlytics/d/m/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/c;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/google/firebase/crashlytics/d/m/d/d;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k;->g:Lcom/google/firebase/crashlytics/d/j/c;

    .line 39
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/m;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, p2, v2, v3}, Lcom/google/firebase/crashlytics/d/m/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/c;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/google/firebase/crashlytics/d/m/d/a;

    invoke-direct {p2, v1, p1}, Lcom/google/firebase/crashlytics/d/m/d/a;-><init>(Lcom/google/firebase/crashlytics/d/m/d/c;Lcom/google/firebase/crashlytics/d/m/d/d;)V

    return-object p2
.end method

.method private b(J)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/k;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 45
    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$o;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/k$o;-><init>(Lcom/google/firebase/crashlytics/d/h/k;J)V

    invoke-static {v0, v1}, Le/i/b/b/d/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$n;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/h/k$n;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V
    .locals 15
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v9, p0

    move-object/from16 v10, p3

    const-string v11, "Failed to close non-fatal file output stream."

    const-string v12, "Failed to flush to non-fatal file."

    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 18
    iget-object v0, v9, Lcom/google/firebase/crashlytics/d/h/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v13, Lcom/google/firebase/crashlytics/d/l/b;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/google/firebase/crashlytics/d/l/b;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-static {v13}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v7, "error"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/Thread;Ljava/lang/Throwable;JLjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    invoke-static {v14, v12}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v1

    .line 25
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "An error occurred in the non-fatal exception logger"

    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    invoke-static {v1, v12}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 27
    :goto_1
    invoke-static {v13, v11}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 28
    :try_start_4
    invoke-direct {p0, v10, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 29
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "An error occurred when trimming non-fatal files."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    .line 30
    :goto_3
    invoke-static {v1, v12}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 31
    invoke-static {v13, v11}, Lcom/google/firebase/crashlytics/d/h/h;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method static synthetic b([Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/h/k;->c([Ljava/io/File;)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/d/a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/d;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 15
    new-instance v3, Lcom/google/firebase/crashlytics/d/i/b;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/d/h/k;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/d/h/k;->l:Lcom/google/firebase/crashlytics/d/h/k$b0;

    invoke-direct {v3, v4, v5, p1}, Lcom/google/firebase/crashlytics/d/i/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/i/b$b;Ljava/lang/String;)V

    .line 16
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->g()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 18
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Couldn\'t create native sessions directory"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(J)V

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v2

    .line 22
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/i/b;->b()[B

    move-result-object v5

    .line 23
    invoke-static {v0, p1, v1, v2, v5}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;[B)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/d/h/d0;->a(Ljava/io/File;Ljava/util/List;)V

    .line 25
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->t:Lcom/google/firebase/crashlytics/d/h/h0;

    .line 26
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/i/b;->a()V

    return-void

    .line 29
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/j0;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/b0;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/d/h/b0;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/b0;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/j0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/d/h/k;)Le/i/b/b/d/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->x()Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .locals 4

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->w()[Ljava/io/File;

    move-result-object v1

    .line 10
    array-length v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 11
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/i/b;->a(Ljava/util/Set;)V

    .line 14
    new-instance p1, Lcom/google/firebase/crashlytics/d/h/k$x;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/google/firebase/crashlytics/d/h/k$x;-><init>(Lcom/google/firebase/crashlytics/d/h/k$k;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private static d([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->n:Lcom/google/firebase/crashlytics/d/m/a;

    return-object p0
.end method

.method private e(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$f0;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/d/h/k$f0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->k:Lcom/google/firebase/crashlytics/d/m/b$b;

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "-"

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->j:Lcom/google/firebase/crashlytics/d/h/b;

    return-object p0
.end method

.method private g(Ljava/lang/String;)V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->h:Lcom/google/firebase/crashlytics/d/h/y;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/y;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->j:Lcom/google/firebase/crashlytics/d/h/b;

    iget-object v8, v1, Lcom/google/firebase/crashlytics/d/h/b;->e:Ljava/lang/String;

    .line 4
    iget-object v9, v1, Lcom/google/firebase/crashlytics/d/h/b;->f:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->h:Lcom/google/firebase/crashlytics/d/h/y;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/y;->a()Ljava/lang/String;

    move-result-object v10

    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->j:Lcom/google/firebase/crashlytics/d/h/b;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/b;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/v;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/v;->getId()I

    move-result v11

    .line 8
    new-instance v12, Lcom/google/firebase/crashlytics/d/h/k$i;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/crashlytics/d/h/k$i;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SessionApp"

    invoke-direct {p0, p1, v1, v12}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    iget-object v12, p0, Lcom/google/firebase/crashlytics/d/h/k;->r:Ljava/lang/String;

    move-object v2, p1

    move-object v8, v12

    invoke-interface/range {v1 .. v8}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->o:Lcom/google/firebase/crashlytics/d/m/b$a;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v13, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/h;->a()I

    move-result v16

    .line 5
    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v18

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/h;->b()J

    move-result-wide v19

    .line 8
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long v21, v2, v4

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->j(Landroid/content/Context;)Z

    move-result v23

    .line 10
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/h;->c(Landroid/content/Context;)I

    move-result v24

    .line 11
    sget-object v25, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 12
    sget-object v26, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 13
    new-instance v14, Lcom/google/firebase/crashlytics/d/h/k$l;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/google/firebase/crashlytics/d/h/k$l;-><init>(Lcom/google/firebase/crashlytics/d/h/k;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "SessionDevice"

    move-object/from16 v1, p1

    invoke-direct {v13, v1, v0, v14}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    .line 14
    iget-object v14, v13, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    move-object/from16 v15, p1

    invoke-interface/range {v14 .. v26}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/i/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    return-object p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 5

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/h;->k(Landroid/content/Context;)Z

    move-result v2

    .line 5
    new-instance v3, Lcom/google/firebase/crashlytics/d/h/k$j;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/h/k$j;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "SessionOS"

    invoke-direct {p0, p1, v4, v3}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    .line 6
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/d/h/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->r:Ljava/lang/String;

    return-object p0
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/j0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$m;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crashlytics/d/h/k$m;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/j0;)V

    const-string v0, "SessionUser"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/k$y;)V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->s:Lcom/google/firebase/crashlytics/d/f/a;

    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/crashlytics/d/h/k;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->d:Lcom/google/firebase/crashlytics/d/h/n;

    return-object p0
.end method

.method static synthetic n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/k;->t:Lcom/google/firebase/crashlytics/d/h/h0;

    return-object p0
.end method

.method static synthetic p()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/k;->E:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private q()Lcom/google/firebase/crashlytics/d/m/b$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$w;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/h/k$w;-><init>(Lcom/google/firebase/crashlytics/d/h/k;)V

    return-object v0
.end method

.method private r()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/k;->v()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/g;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k;->h:Lcom/google/firebase/crashlytics/d/h/y;

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/d/h/g;-><init>(Lcom/google/firebase/crashlytics/d/h/y;)V

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/g;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening a new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, v2}, Lcom/google/firebase/crashlytics/d/a;->d(Ljava/lang/String;)Z

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;J)V

    .line 6
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/h/k;->g(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/h/k;->i(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/h/k;->h(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k;->m:Lcom/google/firebase/crashlytics/d/i/b;

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/i/b;->a(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k;->t:Lcom/google/firebase/crashlytics/d/h/h0;

    .line 11
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static s()Z
    .locals 1

    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private t()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->w()[Ljava/io/File;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static v()J
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method private w()[Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->m()[Ljava/io/File;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/firebase/crashlytics/d/h/k;->C:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private x()Le/i/b/b/d/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->j()[Ljava/io/File;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 5
    invoke-direct {p0, v5, v6}, Lcom/google/firebase/crashlytics/d/h/k;->b(J)Le/i/b/b/d/h;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse timestamp from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/util/Collection;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method private y()Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->c:Lcom/google/firebase/crashlytics/d/h/t;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/t;->a()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->v:Le/i/b/b/d/i;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Automatic data collection is disabled."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Notifying that unsent reports are available."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->v:Le/i/b/b/d/i;

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->c:Lcom/google/firebase/crashlytics/d/h/t;

    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/t;->b()Le/i/b/b/d/h;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$u;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/k$u;-><init>(Lcom/google/firebase/crashlytics/d/h/k;)V

    .line 10
    invoke-virtual {v0, v1}, Le/i/b/b/d/h;->a(Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->w:Le/i/b/b/d/i;

    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Le/i/b/b/d/h;Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Le/i/b/b/d/h;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "checkForUnsentReports should only be called once per execution."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->v:Le/i/b/b/d/i;

    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method a(FLe/i/b/b/d/h;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/crashlytics/d/o/i/b;",
            ">;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->n:Lcom/google/firebase/crashlytics/d/m/a;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/m/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "No reports are available."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->v:Le/i/b/b/d/i;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Unsent reports are available."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->y()Le/i/b/b/d/h;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$v;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/firebase/crashlytics/d/h/k$v;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Le/i/b/b/d/h;F)V

    .line 32
    invoke-virtual {v0, v1}, Le/i/b/b/d/h;->a(Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(IZ)V

    return-void
.end method

.method a(JLjava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/h/k$a;-><init>(Lcom/google/firebase/crashlytics/d/h/k;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    return-void
.end method

.method declared-synchronized a(Lcom/google/firebase/crashlytics/d/o/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1    # Lcom/google/firebase/crashlytics/d/o/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 17
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$t;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/d/h/k$t;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/d/o/e;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->b(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Le/i/b/b/d/h;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/h/j0;->a(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/j0;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/j0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/j0;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k;->b:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/firebase/crashlytics/d/h/h;->i(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->n()V

    .line 11
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k$s;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/h/k$s;-><init>(Lcom/google/firebase/crashlytics/d/h/k;)V

    .line 12
    new-instance v1, Lcom/google/firebase/crashlytics/d/h/r;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/h/r;-><init>(Lcom/google/firebase/crashlytics/d/h/r$a;Lcom/google/firebase/crashlytics/d/o/e;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->u:Lcom/google/firebase/crashlytics/d/h/r;

    .line 13
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k;->u:Lcom/google/firebase/crashlytics/d/h/r;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v2, Lcom/google/firebase/crashlytics/d/h/k$b;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/h/k$b;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/lang/Runnable;)Le/i/b/b/d/h;

    return-void
.end method

.method a([Ljava/io/File;)V
    .locals 8

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 94
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found invalid session part file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 95
    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 97
    :cond_1
    new-instance p1, Lcom/google/firebase/crashlytics/d/h/k$g;

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/crashlytics/d/h/k$g;-><init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/util/Set;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 99
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting invalid session file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method b()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$f;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/k$f;-><init>(Lcom/google/firebase/crashlytics/d/h/k;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/lang/Runnable;)Le/i/b/b/d/h;

    return-void
.end method

.method b(I)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/i;->a()V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Finalizing previously open sessions."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v1, "Closed all previously open sessions"

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Unable to finalize previously open sessions."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method c()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->w:Le/i/b/b/d/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->x:Le/i/b/b/d/i;

    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method c(I)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->g()Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->e()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/h/k;->D:Ljava/util/Comparator;

    .line 6
    invoke-static {v0, v1, p1, v2}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/io/File;Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->h()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/k;->D:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/k;->B:Ljava/io/FilenameFilter;

    sget-object v2, Lcom/google/firebase/crashlytics/d/h/k;->D:Ljava/util/Comparator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->d:Lcom/google/firebase/crashlytics/d/h/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/k;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k;->p:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v1, v0}, Lcom/google/firebase/crashlytics/d/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Found previous crash marker."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->d:Lcom/google/firebase/crashlytics/d/h/n;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/n;->c()Z

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method e()Ljava/io/File;
    .locals 3

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "fatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method f()Ljava/io/File;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->i:Lcom/google/firebase/crashlytics/d/k/h;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/k/h;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/io/File;
    .locals 3

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "native-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method h()Ljava/io/File;
    .locals 3

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "nonfatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method i()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->u:Lcom/google/firebase/crashlytics/d/h/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()[Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/k;->A:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method k()[Ljava/io/File;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->e()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/h/k;->B:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->h()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/h/k;->B:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/h/k;->B:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method l()[Ljava/io/File;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->d([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method m()[Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/k;->z:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->f:Lcom/google/firebase/crashlytics/d/h/i;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$e;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/k$e;-><init>(Lcom/google/firebase/crashlytics/d/h/k;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    return-void
.end method

.method o()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->w:Le/i/b/b/d/i;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k;->x:Le/i/b/b/d/i;

    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
