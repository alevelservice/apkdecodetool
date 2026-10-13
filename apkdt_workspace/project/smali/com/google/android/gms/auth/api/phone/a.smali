.class public final Lcom/google/android/gms/auth/api/phone/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"


# direct methods
.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/c;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth-api-phone/e;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
