.class Lcom/mapbox/android/telemetry/g0;
.super Ljava/lang/Object;
.source "TelemetryClient.java"


# static fields
.field private static final g:Li/u;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/mapbox/android/telemetry/i0;

.field private final e:Lcom/mapbox/android/telemetry/w;

.field private f:Lcom/mapbox/android/telemetry/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Li/u;->b(Ljava/lang/String;)Li/u;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/g0;->g:Li/u;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/i0;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/g0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mapbox/android/telemetry/g0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mapbox/android/telemetry/g0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    .line 6
    iput-object p5, p0, Lcom/mapbox/android/telemetry/g0;->e:Lcom/mapbox/android/telemetry/w;

    .line 7
    iput-object p6, p0, Lcom/mapbox/android/telemetry/g0;->f:Lcom/mapbox/android/telemetry/e;

    return-void
.end method

.method private a(Li/v$a;)Li/a0;
    .locals 3

    .line 32
    invoke-virtual {p1}, Li/v$a;->a()Li/v;

    move-result-object p1

    .line 33
    new-instance v0, Li/v$a;

    const-string v1, "--01ead4a5-7a67-4703-ad02-589886e00923"

    invoke-direct {v0, v1}, Li/v$a;-><init>(Ljava/lang/String;)V

    sget-object v1, Li/v;->f:Li/u;

    .line 34
    invoke-virtual {v0, v1}, Li/v$a;->a(Li/u;)Li/v$a;

    .line 35
    invoke-virtual {p1}, Li/v;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 36
    invoke-virtual {p1, v1}, Li/v;->a(I)Li/v$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/v$a;->a(Li/v$b;)Li/v$a;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Li/v$a;->a()Li/v;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0;->b()Lcom/mapbox/android/telemetry/o;

    move-result-object v0

    sget-object v1, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private b(Ljava/util/List;Li/f;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;",
            "Li/f;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/google/gson/e;

    invoke-direct {p3}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p3}, Lcom/google/gson/e;->b()Lcom/google/gson/e;

    invoke-virtual {p3}, Lcom/google/gson/e;->a()Lcom/google/gson/Gson;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    sget-object v0, Lcom/mapbox/android/telemetry/g0;->g:Li/u;

    invoke-static {v0, p3}, Li/a0;->a(Li/u;Ljava/lang/String;)Li/a0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/i0;->a()Li/s;

    move-result-object v1

    const-string v2, "/events/v2"

    .line 5
    invoke-virtual {v1, v2}, Li/s;->a(Ljava/lang/String;)Li/s$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mapbox/android/telemetry/g0;->a:Ljava/lang/String;

    const-string v3, "access_token"

    .line 6
    invoke-virtual {v1, v3, v2}, Li/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/s$a;

    invoke-virtual {v1}, Li/s$a;->a()Li/s;

    move-result-object v1

    .line 7
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/g0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/mapbox/android/telemetry/g0;->e:Lcom/mapbox/android/telemetry/w;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mapbox/android/telemetry/g0;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const-string p3, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s"

    invoke-static {v3, p3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "TelemetryClient"

    invoke-virtual {v2, v3, p3}, Lcom/mapbox/android/telemetry/w;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    new-instance p3, Li/z$a;

    invoke-direct {p3}, Li/z$a;-><init>()V

    .line 10
    invoke-virtual {p3, v1}, Li/z$a;->a(Li/s;)Li/z$a;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/g0;->b:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 11
    invoke-virtual {p3, v2, v1}, Li/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/g0;->c:Ljava/lang/String;

    const-string v2, "X-Mapbox-Agent"

    .line 12
    invoke-virtual {p3, v2, v1}, Li/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    .line 13
    invoke-virtual {p3, v0}, Li/z$a;->a(Li/a0;)Li/z$a;

    .line 14
    invoke-virtual {p3}, Li/z$a;->a()Li/z;

    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/g0;->f:Lcom/mapbox/android/telemetry/e;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/android/telemetry/i0;->a(Lcom/mapbox/android/telemetry/e;I)Li/w;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p3}, Li/w;->a(Li/z;)Li/e;

    move-result-object p1

    invoke-interface {p1, p2}, Li/e;->a(Li/f;)V

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/android/telemetry/Attachment;Ljava/util/concurrent/CopyOnWriteArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/telemetry/Attachment;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/mapbox/android/telemetry/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/Attachment;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Li/v$a;

    const-string v3, "--01ead4a5-7a67-4703-ad02-589886e00923"

    invoke-direct {v2, v3}, Li/v$a;-><init>(Ljava/lang/String;)V

    sget-object v3, Li/v;->f:Li/u;

    .line 6
    invoke-virtual {v2, v3}, Li/v$a;->a(Li/u;)Li/v$a;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 9
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attachments"

    invoke-virtual {v2, v4, v3}, Li/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/v$a;

    .line 10
    invoke-direct {p0, v2}, Lcom/mapbox/android/telemetry/g0;->a(Li/v$a;)Li/a0;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    invoke-virtual {v3}, Lcom/mapbox/android/telemetry/i0;->a()Li/s;

    move-result-object v3

    const-string v4, "/attachments/v1"

    .line 12
    invoke-virtual {v3, v4}, Li/s;->a(Ljava/lang/String;)Li/s$a;

    move-result-object v3

    iget-object v4, p0, Lcom/mapbox/android/telemetry/g0;->a:Ljava/lang/String;

    const-string v5, "access_token"

    .line 13
    invoke-virtual {v3, v5, v4}, Li/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/s$a;

    .line 14
    invoke-virtual {v3}, Li/s$a;->a()Li/s;

    move-result-object v3

    .line 15
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/g0;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    iget-object v4, p0, Lcom/mapbox/android/telemetry/g0;->e:Lcom/mapbox/android/telemetry/w;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    const/4 p1, 0x2

    iget-object v7, p0, Lcom/mapbox/android/telemetry/g0;->b:Ljava/lang/String;

    aput-object v7, v6, p1

    const/4 p1, 0x3

    aput-object v0, v6, p1

    const-string p1, "Sending POST to %s with %d event(s) (user agent: %s) with payload: %s"

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelemetryClient"

    invoke-virtual {v4, v0, p1}, Lcom/mapbox/android/telemetry/w;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    new-instance p1, Li/z$a;

    invoke-direct {p1}, Li/z$a;-><init>()V

    .line 18
    invoke-virtual {p1, v3}, Li/z$a;->a(Li/s;)Li/z$a;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->b:Ljava/lang/String;

    const-string v3, "User-Agent"

    .line 19
    invoke-virtual {p1, v3, v0}, Li/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->c:Ljava/lang/String;

    const-string v3, "X-Mapbox-Agent"

    .line 20
    invoke-virtual {p1, v3, v0}, Li/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    .line 21
    invoke-virtual {p1, v2}, Li/z$a;->a(Li/a0;)Li/z$a;

    .line 22
    invoke-virtual {p1}, Li/z$a;->a()Li/z;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/g0;->f:Lcom/mapbox/android/telemetry/e;

    invoke-virtual {v0, v2}, Lcom/mapbox/android/telemetry/i0;->a(Lcom/mapbox/android/telemetry/e;)Li/w;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Li/w;->a(Li/z;)Li/e;

    move-result-object p1

    new-instance v0, Lcom/mapbox/android/telemetry/g0$a;

    invoke-direct {v0, p0, p2, v1}, Lcom/mapbox/android/telemetry/g0$a;-><init>(Lcom/mapbox/android/telemetry/g0;Ljava/util/concurrent/CopyOnWriteArraySet;Ljava/util/List;)V

    invoke-interface {p1, v0}, Li/e;->a(Li/f;)V

    return-void

    .line 25
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/telemetry/s;

    .line 26
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/s;->b()Lcom/mapbox/android/telemetry/t;

    .line 27
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/s;->a()Lcom/mapbox/android/telemetry/d;

    move-result-object p1

    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/d;->a()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method a(Ljava/util/List;Li/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/android/telemetry/Event;",
            ">;",
            "Li/f;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/android/telemetry/g0;->b(Ljava/util/List;Li/f;Z)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0;->d()Lcom/mapbox/android/telemetry/i0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/i0$b;->a(Z)Lcom/mapbox/android/telemetry/i0$b;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0$b;->a()Lcom/mapbox/android/telemetry/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/g0;->d:Lcom/mapbox/android/telemetry/i0;

    return-void
.end method
