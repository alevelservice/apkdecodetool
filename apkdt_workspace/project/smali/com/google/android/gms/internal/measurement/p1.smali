.class public abstract Lcom/google/android/gms/internal/measurement/p1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/w1;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/p1;->f:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/p1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w1;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/p1;->d:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w1;->a(Lcom/google/android/gms/internal/measurement/w1;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/p1;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/p1;->c:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/s1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p1;-><init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w1;",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/measurement/u1;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u1;-><init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w1;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;-><init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w1;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;-><init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w1;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/p1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/r1;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/r1;-><init>(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/p1;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 3
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    if-eq v1, p0, :cond_1

    .line 4
    const-class v1, Lcom/google/android/gms/internal/measurement/d1;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/measurement/d1;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    :try_start_2
    const-class v1, Lcom/google/android/gms/internal/measurement/v1;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 8
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/v1;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    const-class v1, Lcom/google/android/gms/internal/measurement/m1;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v2, 0x0

    .line 11
    :try_start_5
    sput-object v2, Lcom/google/android/gms/internal/measurement/m1;->b:Lcom/google/android/gms/internal/measurement/m1;

    .line 12
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 13
    :try_start_6
    sget-object v1, Lcom/google/android/gms/internal/measurement/p1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 14
    sput-object p0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 15
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception p0

    .line 16
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_2
    move-exception p0

    .line 17
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0

    .line 18
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p1;->a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p1;->a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p1;->a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p1;->a(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p0

    return-object p0
.end method

.method static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private final d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/m1;

    move-result-object v0

    const-string v1, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/measurement/c1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w1;->a(Lcom/google/android/gms/internal/measurement/w1;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/w1;->a(Lcom/google/android/gms/internal/measurement/w1;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/n1;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/w1;->a(Lcom/google/android/gms/internal/measurement/w1;)Landroid/net/Uri;

    move-result-object v2

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/d1;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/d1;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/v1;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/h1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/p1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x3

    const-string v2, "PhenotypeFlag"

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Bypass reading Phenotype values for flag: "

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method private final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/m1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/w1;->c(Lcom/google/android/gms/internal/measurement/w1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/p1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/h1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/p1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/measurement/p1;->d:I

    if-ge v1, v0, :cond_4

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/p1;->d:I

    if-ge v1, v0, :cond_3

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/measurement/p1;->g:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/p1;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/p1;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p1;->c:Ljava/lang/Object;

    .line 28
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/p1;->e:Ljava/lang/Object;

    .line 29
    iput v0, p0, Lcom/google/android/gms/internal/measurement/p1;->d:I

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->a:Lcom/google/android/gms/internal/measurement/w1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w1;->b(Lcom/google/android/gms/internal/measurement/w1;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/p1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
