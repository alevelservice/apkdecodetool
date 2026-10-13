.class public final Lcom/google/android/gms/internal/ads/g50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/it;

.field private final b:Lcom/google/android/gms/internal/ads/fu;

.field private final c:Lcom/google/android/gms/internal/ads/tu;

.field private final d:Lcom/google/android/gms/internal/ads/yu;

.field private final e:Lcom/google/android/gms/internal/ads/zv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/tu;Lcom/google/android/gms/internal/ads/yu;Lcom/google/android/gms/internal/ads/zv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g50;->a:Lcom/google/android/gms/internal/ads/it;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g50;->b:Lcom/google/android/gms/internal/ads/fu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/g50;->c:Lcom/google/android/gms/internal/ads/tu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/g50;->d:Lcom/google/android/gms/internal/ads/yu;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/g50;->e:Lcom/google/android/gms/internal/ads/zv;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/y40;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y40;->a(Lcom/google/android/gms/internal/ads/y40;)Lcom/google/android/gms/internal/ads/h50;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g50;->a:Lcom/google/android/gms/internal/ads/it;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/g50;->c:Lcom/google/android/gms/internal/ads/tu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/g50;->d:Lcom/google/android/gms/internal/ads/yu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/g50;->e:Lcom/google/android/gms/internal/ads/zv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g50;->b:Lcom/google/android/gms/internal/ads/fu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j50;->a(Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/ads/internal/overlay/p;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/h50;->a(Lcom/google/android/gms/internal/ads/h50;Lcom/google/android/gms/internal/ads/st1;Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/ads/internal/overlay/p;)V

    return-void
.end method
