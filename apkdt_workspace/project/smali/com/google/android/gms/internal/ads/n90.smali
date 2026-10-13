.class final synthetic Lcom/google/android/gms/internal/ads/n90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/e90;

.field private final f:Lcom/google/android/gms/internal/ads/zzaji;

.field private final g:Lcom/google/android/gms/internal/ads/zzaez;

.field private final h:Ljava/util/List;

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaez;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n90;->e:Lcom/google/android/gms/internal/ads/e90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n90;->f:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n90;->g:Lcom/google/android/gms/internal/ads/zzaez;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/n90;->h:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/n90;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n90;->e:Lcom/google/android/gms/internal/ads/e90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n90;->f:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n90;->g:Lcom/google/android/gms/internal/ads/zzaez;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n90;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/n90;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/e90;->a(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaez;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
