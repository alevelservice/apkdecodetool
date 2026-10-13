.class Lcom/mapbox/android/telemetry/v$a;
.super Li/a0;
.source "GzipRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/v;->a(Li/a0;)Li/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/a0;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/v;Li/a0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mapbox/android/telemetry/v$a;->a:Li/a0;

    invoke-direct {p0}, Li/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(Lj/d;)V
    .locals 1

    .line 1
    new-instance v0, Lj/k;

    invoke-direct {v0, p1}, Lj/k;-><init>(Lj/t;)V

    invoke-static {v0}, Lj/n;->a(Lj/t;)Lj/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/telemetry/v$a;->a:Li/a0;

    invoke-virtual {v0, p1}, Li/a0;->a(Lj/d;)V

    .line 3
    invoke-interface {p1}, Lj/t;->close()V

    return-void
.end method

.method public b()Li/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/v$a;->a:Li/a0;

    invoke-virtual {v0}, Li/a0;->b()Li/u;

    move-result-object v0

    return-object v0
.end method
