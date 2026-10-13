.class public Lcom/google/android/gms/ads/mediation/x;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/ads/formats/a$b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Double;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/gms/ads/j;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Ljava/lang/Object;

.field private o:Landroid/os/Bundle;

.field private p:Z

.field private q:Z

.field private r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->o:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->l:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/a$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->d:Lcom/google/android/gms/ads/formats/a$b;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/j;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->j:Lcom/google/android/gms/ads/j;

    return-void
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->g:Ljava/lang/Double;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->n:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->b:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/x;->q:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->c:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/x;->p:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->a:Ljava/lang/String;

    return-void
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->i:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/x;->h:Ljava/lang/String;

    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/formats/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->d:Lcom/google/android/gms/ads/formats/a$b;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->b:Ljava/util/List;

    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/mediation/x;->r:F

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/x;->q:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/x;->p:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/ads/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->j:Lcom/google/android/gms/ads/j;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/x;->k:Z

    return v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public final r()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->m:Landroid/view/View;

    return-object v0
.end method

.method public final s()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/x;->n:Ljava/lang/Object;

    return-object v0
.end method
