.class final synthetic Lcom/google/android/gms/internal/ads/vc0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fu0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wc0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vc0;->a:Lcom/google/android/gms/internal/ads/wc0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc0;->a:Lcom/google/android/gms/internal/ads/wc0;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wc0;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
