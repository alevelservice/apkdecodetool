.class public Lcom/mapbox/mapboxsdk/s/a/a;
.super Ljava/lang/Object;
.source "HttpRequestImpl.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/http/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/s/a/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field static final c:Li/w;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static d:Li/w;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private a:Li/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/http/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Mapbox/9.2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "14b615a"

    aput-object v2, v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%s %s (%s) Android/%s (%s)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/s/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/s/a/a;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Li/w$b;

    invoke-direct {v0}, Li/w$b;-><init>()V

    invoke-static {}, Lcom/mapbox/mapboxsdk/s/a/a;->b()Li/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/w$b;->a(Li/n;)Li/w$b;

    invoke-virtual {v0}, Li/w$b;->a()Li/w;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/s/a/a;->c:Li/w;

    .line 6
    sget-object v0, Lcom/mapbox/mapboxsdk/s/a/a;->c:Li/w;

    sput-object v0, Lcom/mapbox/mapboxsdk/s/a/a;->d:Li/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Li/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Li/n;

    invoke-direct {v0}, Li/n;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/16 v1, 0x14

    .line 3
    invoke-virtual {v0, v1}, Li/n;->a(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1}, Li/n;->a(I)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/s/a/a;->a:Li/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 19
    invoke-interface {v0}, Li/e;->v()Li/z;

    move-result-object v0

    invoke-virtual {v0}, Li/z;->g()Li/s;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "[HTTP] Cancel request %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/s/a/a;->a:Li/e;

    invoke-interface {v0}, Li/e;->cancel()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/http/e;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/mapbox/mapboxsdk/s/a/a$a;

    invoke-direct {p2, p1}, Lcom/mapbox/mapboxsdk/s/a/a$a;-><init>(Lcom/mapbox/mapboxsdk/http/e;)V

    .line 2
    :try_start_0
    invoke-static {p4}, Li/s;->e(Ljava/lang/String;)Li/s;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    const-string p3, "[HTTP] Unable to parse resourceUrl %s"

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p4, p5, p6

    .line 3
    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Li/s;->g()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/mapbox/mapboxsdk/q/a;->a:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p1}, Li/s;->l()I

    move-result p1

    invoke-static {p3, p4, p1, p7}, Lcom/mapbox/mapboxsdk/http/d;->a(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p3, Li/z$a;

    invoke-direct {p3}, Li/z$a;-><init>()V

    .line 7
    invoke-virtual {p3, p1}, Li/z$a;->b(Ljava/lang/String;)Li/z$a;

    sget-object p4, Lcom/mapbox/mapboxsdk/q/a;->a:Ljava/util/Locale;

    .line 8
    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Li/z$a;->a(Ljava/lang/Object;)Li/z$a;

    const-string p1, "User-Agent"

    sget-object p4, Lcom/mapbox/mapboxsdk/s/a/a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p3, p1, p4}, Li/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    .line 10
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "If-None-Match"

    .line 11
    invoke-virtual {p3, p1, p5}, Li/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "If-Modified-Since"

    .line 13
    invoke-virtual {p3, p1, p6}, Li/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p3}, Li/z$a;->a()Li/z;

    move-result-object p1

    .line 15
    sget-object p3, Lcom/mapbox/mapboxsdk/s/a/a;->d:Li/w;

    invoke-virtual {p3, p1}, Li/w;->a(Li/z;)Li/e;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/s/a/a;->a:Li/e;

    .line 16
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/s/a/a;->a:Li/e;

    invoke-interface {p1, p2}, Li/e;->a(Li/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/s/a/a;->a:Li/e;

    invoke-static {p2, p3, p1}, Lcom/mapbox/mapboxsdk/s/a/a$a;->a(Lcom/mapbox/mapboxsdk/s/a/a$a;Li/e;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
