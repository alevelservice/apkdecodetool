.class final Lcom/google/android/gms/internal/auth-api/zzaj;
.super Lcom/google/android/gms/internal/auth-api/zzaa;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final synthetic e:Le/i/b/b/d/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api/a;Le/i/b/b/d/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zzaj;->e:Le/i/b/b/d/i;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zzaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/BeginSignInResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzaj;->e:Le/i/b/b/d/i;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/t;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Le/i/b/b/d/i;)V

    return-void
.end method
