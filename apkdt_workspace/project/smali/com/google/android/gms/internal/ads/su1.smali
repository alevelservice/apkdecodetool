.class public final Lcom/google/android/gms/internal/ads/su1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/location/Location;

.field private final f:Z

.field private final g:Landroid/os/Bundle;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/search/b;

.field private final l:I

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/os/Bundle;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Z

.field private final q:I

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ru1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/su1;-><init>(Lcom/google/android/gms/internal/ads/ru1;Lcom/google/android/gms/ads/search/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ru1;Lcom/google/android/gms/ads/search/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->a(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->a:Ljava/util/Date;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->b(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->c(Lcom/google/android/gms/internal/ads/ru1;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/su1;->c:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->d(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->d:Ljava/util/Set;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->e(Lcom/google/android/gms/internal/ads/ru1;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->e:Landroid/location/Location;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->f(Lcom/google/android/gms/internal/ads/ru1;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/su1;->f:Z

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->g(Lcom/google/android/gms/internal/ads/ru1;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->g:Landroid/os/Bundle;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->h(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->h:Ljava/util/Map;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->i(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->j(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->j:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su1;->k:Lcom/google/android/gms/ads/search/b;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->k(Lcom/google/android/gms/internal/ads/ru1;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/su1;->l:I

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->l(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su1;->m:Ljava/util/Set;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->m(Lcom/google/android/gms/internal/ads/ru1;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su1;->n:Landroid/os/Bundle;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->n(Lcom/google/android/gms/internal/ads/ru1;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su1;->o:Ljava/util/Set;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->o(Lcom/google/android/gms/internal/ads/ru1;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/su1;->p:Z

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->p(Lcom/google/android/gms/internal/ads/ru1;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/su1;->q:I

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru1;->q(Lcom/google/android/gms/internal/ads/ru1;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su1;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/i;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->g:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->m:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public final d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/su1;->c:I

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/su1;->f:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/su1;->p:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/ads/search/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->k:Lcom/google/android/gms/ads/search/b;

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/su1;->l:I

    return v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su1;->o:Ljava/util/Set;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/su1;->q:I

    return v0
.end method
