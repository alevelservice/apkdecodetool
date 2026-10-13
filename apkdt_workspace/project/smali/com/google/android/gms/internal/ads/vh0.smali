.class final Lcom/google/android/gms/internal/ads/vh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/g;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/vs0;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ns0;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bi0;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/th0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/th0;Lcom/google/android/gms/internal/ads/he;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vh0;->e:Lcom/google/android/gms/internal/ads/th0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vh0;->a:Lcom/google/android/gms/internal/ads/he;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vh0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vh0;->c:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vh0;->d:Lcom/google/android/gms/internal/ads/bi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vh0;->a:Lcom/google/android/gms/internal/ads/he;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vh0;->e:Lcom/google/android/gms/internal/ads/th0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/th0;->a(Lcom/google/android/gms/internal/ads/th0;)Lcom/google/android/gms/internal/ads/yh0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vh0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vh0;->c:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vh0;->d:Lcom/google/android/gms/internal/ads/bi0;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/yh0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Landroid/view/View;Lcom/google/android/gms/internal/ads/bi0;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
