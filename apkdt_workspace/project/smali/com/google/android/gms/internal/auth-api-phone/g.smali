.class final synthetic Lcom/google/android/gms/internal/auth-api-phone/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/o;


# instance fields
.field private final a:Lcom/google/android/gms/internal/auth-api-phone/e;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/g;->a:Lcom/google/android/gms/internal/auth-api-phone/e;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/g;->a:Lcom/google/android/gms/internal/auth-api-phone/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api-phone/g;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/f;

    check-cast p2, Le/i/b/b/d/i;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzj;

    new-instance v2, Lcom/google/android/gms/internal/auth-api-phone/zzy;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzy;-><init>(Lcom/google/android/gms/internal/auth-api-phone/e;Le/i/b/b/d/i;)V

    .line 3
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/auth-api-phone/zzj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzl;)V

    return-void
.end method
