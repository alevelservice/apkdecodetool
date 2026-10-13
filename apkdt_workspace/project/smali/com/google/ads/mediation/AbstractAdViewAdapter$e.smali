.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$e;
.super Lcom/google/android/gms/ads/b;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/formats/c$a;
.implements Lcom/google/android/gms/ads/formats/d$a;
.implements Lcom/google/android/gms/ads/formats/e$a;
.implements Lcom/google/android/gms/ads/formats/e$b;
.implements Lcom/google/android/gms/ads/formats/h$b;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final e:Lcom/google/ads/mediation/AbstractAdViewAdapter;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/ads/mediation/n;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/c;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/q;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/d;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;-><init>(Lcom/google/android/gms/ads/formats/d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/q;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/e;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/e;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/e;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/e;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/h;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;-><init>(Lcom/google/android/gms/ads/formats/h;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/x;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->e(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->d(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->f:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;->e:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->c(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method
