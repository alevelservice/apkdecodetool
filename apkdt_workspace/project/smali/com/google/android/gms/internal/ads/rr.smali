.class public final Lcom/google/android/gms/internal/ads/rr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oa0;

.field private final b:Lcom/google/android/gms/internal/ads/wa0;

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zzaok;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/ws0;

.field private final e:Lcom/google/android/gms/internal/ads/zu0;

.field private final f:Lcom/google/android/gms/internal/ads/um;

.field private final g:Lcom/google/android/gms/internal/ads/eg0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/eg0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/vs0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa0;Lcom/google/android/gms/internal/ads/wa0;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/zu0;Lcom/google/android/gms/internal/ads/um;Lcom/google/android/gms/internal/ads/eg0;Lcom/google/android/gms/internal/ads/aw;Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 0
    .param p9    # Lcom/google/android/gms/internal/ads/vs0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oa0;",
            "Lcom/google/android/gms/internal/ads/wa0;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zzaok;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/ws0;",
            "Lcom/google/android/gms/internal/ads/zu0;",
            "Lcom/google/android/gms/internal/ads/um;",
            "Lcom/google/android/gms/internal/ads/eg0<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/aw;",
            "Lcom/google/android/gms/internal/ads/vs0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/oa0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rr;->b:Lcom/google/android/gms/internal/ads/wa0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rr;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rr;->d:Lcom/google/android/gms/internal/ads/ws0;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/rr;->f:Lcom/google/android/gms/internal/ads/um;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/eg0;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/vs0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/vs0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzglo:Lcom/google/android/gms/internal/ads/wu0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/pu0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/vs0;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu0;->a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->i()Lcom/google/android/gms/internal/ads/sr1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sr1;->a()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->d:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztp;->w:Lcom/google/android/gms/internal/ads/zztj;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzglo:Lcom/google/android/gms/internal/ads/wu0;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/pu0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->b:Lcom/google/android/gms/internal/ads/wa0;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wa0;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pu0;->a(Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzglo:Lcom/google/android/gms/internal/ads/wu0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rr;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 13
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qz0;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/oa0;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    .line 16
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->X2:Lcom/google/android/gms/internal/ads/pv1;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v2, Lcom/google/android/gms/internal/ads/wu0;->zzglp:Lcom/google/android/gms/internal/ads/wu0;

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->f:Lcom/google/android/gms/internal/ads/um;

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/eg0;

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    return-object v0

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->e:Lcom/google/android/gms/internal/ads/zu0;

    sget-object v2, Lcom/google/android/gms/internal/ads/wu0;->zzglp:Lcom/google/android/gms/internal/ads/wu0;

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ku0;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->f:Lcom/google/android/gms/internal/ads/um;

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rr;->g:Lcom/google/android/gms/internal/ads/eg0;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ru0;->a(Lcom/google/android/gms/internal/ads/qy0;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->Y2:Lcom/google/android/gms/internal/ads/pv1;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ru0;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/ru0;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ru0;->a()Lcom/google/android/gms/internal/ads/hu0;

    move-result-object v0

    return-object v0
.end method
