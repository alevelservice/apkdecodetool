.class public final Lcom/google/android/gms/internal/ads/oa0;
.super Lcom/google/android/gms/internal/ads/ma0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/s90;

.field private final c:Lcom/google/android/gms/internal/ads/tz0;

.field private final d:Lcom/google/android/gms/internal/ads/ws0;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/google/android/gms/internal/ads/kc0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/oa0;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/rv;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/s90;Lcom/google/android/gms/internal/ads/tz0;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/kc0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ma0;-><init>(Lcom/google/android/gms/internal/ads/rv;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oa0;->d:Lcom/google/android/gms/internal/ads/ws0;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oa0;->b:Lcom/google/android/gms/internal/ads/s90;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oa0;->c:Lcom/google/android/gms/internal/ads/tz0;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oa0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/oa0;->f:Lcom/google/android/gms/internal/ads/kc0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/oa0;)Lcom/google/android/gms/internal/ads/kc0;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oa0;->f:Lcom/google/android/gms/internal/ads/kc0;

    return-object p0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/oa0;->g:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaok;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/vs0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oa0;->b:Lcom/google/android/gms/internal/ads/s90;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s90;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/sa0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/sa0;-><init>(Lcom/google/android/gms/internal/ads/oa0;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oa0;->c:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->X2:Lcom/google/android/gms/internal/ads/pv1;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->Y2:Lcom/google/android/gms/internal/ads/pv1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oa0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 11
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/ra0;->a:Lcom/google/android/gms/internal/ads/qy0;

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ua0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ua0;-><init>(Lcom/google/android/gms/internal/ads/oa0;)V

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic a(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/vs0;

    new-instance v1, Lcom/google/android/gms/internal/ads/qs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oa0;->d:Lcom/google/android/gms/internal/ads/ws0;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/qs0;-><init>(Lcom/google/android/gms/internal/ads/ws0;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ts0;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/ts0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vs0;-><init>(Lcom/google/android/gms/internal/ads/qs0;Lcom/google/android/gms/internal/ads/ts0;)V

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
