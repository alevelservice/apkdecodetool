.class public abstract Lcom/google/android/gms/internal/vision/x;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


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

.field private static h:Lcom/google/android/gms/internal/vision/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/k0<",
            "Lcom/google/android/gms/internal/vision/g0<",
            "Lcom/google/android/gms/internal/vision/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Lcom/google/android/gms/internal/vision/b0;

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

    sput-object v0, Lcom/google/android/gms/internal/vision/x;->f:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/b0;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/vision/x;->d:I

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/b0;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/b0;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass one of SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/x;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/x;->c:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/z;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/x;-><init>(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/b0;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/vision/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/vision/y;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/y;-><init>(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/x;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x;->b:Ljava/lang/String;

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
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/x;->f:Ljava/lang/Object;

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
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    if-eq v1, p0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/vision/j;->e()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/vision/a0;->a()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/vision/o;->a()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    sput-object p0, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/vision/w;->e:Lcom/google/android/gms/internal/vision/k0;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/n0;->a(Lcom/google/android/gms/internal/vision/k0;)Lcom/google/android/gms/internal/vision/k0;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/vision/x;->h:Lcom/google/android/gms/internal/vision/k0;

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/x;->a(Lcom/google/android/gms/internal/vision/b0;Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/x;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/x;->a(Landroid/content/Context;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private final d()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/b0;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/o;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/o;

    move-result-object v0

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/o;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/vision/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_5

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/v;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/vision/b0;->h:Z

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v3, v3, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    .line 10
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 11
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/u;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/j;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/vision/j;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/j;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/vision/j;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1

    .line 17
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/b0;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/a0;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/vision/a0;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/vision/n;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v1, 0x3

    const-string v2, "PhenotypeFlag"

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Bypass reading Phenotype values for flag: "

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-object v0
.end method

.method private final e()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/b0;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/b0;->i:Lcom/google/android/gms/internal/vision/e0;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/e0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/o;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/o;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/vision/b0;->e:Z

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/b0;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/n;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method static final synthetic f()Lcom/google/android/gms/internal/vision/g0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/s;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/s;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/s;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/g0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/vision/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/vision/x;->d:I

    if-ge v1, v0, :cond_7

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/x;->d:I

    if-ge v1, v0, :cond_6

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->g:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/vision/x;->h:Lcom/google/android/gms/internal/vision/k0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/k0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/g0;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/g0;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/g0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/t;

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/b0;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v3, v3, Lcom/google/android/gms/internal/vision/b0;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v4, v4, Lcom/google/android/gms/internal/vision/b0;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/x;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/t;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/vision/b0;->f:Z

    if-eqz v1, :cond_2

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/x;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/x;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/x;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/x;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x;->c:Ljava/lang/Object;

    .line 29
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/vision/x;->e:Ljava/lang/Object;

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/vision/x;->d:I

    goto :goto_1

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_6
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x;->e:Ljava/lang/Object;

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

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x;->a:Lcom/google/android/gms/internal/vision/b0;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/b0;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
