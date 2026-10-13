.class final synthetic Lcom/google/android/gms/internal/ads/l90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/e90;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/android/gms/internal/ads/he;

.field private final h:Ljava/lang/String;

.field private final i:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l90;->e:Lcom/google/android/gms/internal/ads/e90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l90;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l90;->g:Lcom/google/android/gms/internal/ads/he;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/l90;->h:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/l90;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l90;->e:Lcom/google/android/gms/internal/ads/e90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l90;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l90;->g:Lcom/google/android/gms/internal/ads/he;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/l90;->h:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/l90;->i:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/e90;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/he;Ljava/lang/String;J)V

    return-void
.end method
