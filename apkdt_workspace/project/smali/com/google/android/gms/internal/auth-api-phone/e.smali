.class public final Lcom/google/android/gms/internal/auth-api-phone/e;
.super Lcom/google/android/gms/auth/api/phone/c;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/phone/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le/i/b/b/d/h;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/s;->c()Lcom/google/android/gms/common/api/internal/s$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth-api-phone/g;-><init>(Lcom/google/android/gms/internal/auth-api-phone/e;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/s$a;->a(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s$a;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/android/gms/internal/auth-api-phone/a;->c:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s$a;->a([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/s$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s$a;->a()Lcom/google/android/gms/common/api/internal/s;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/internal/s;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
