.class public Lcom/google/android/gms/auth/api/credentials/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# direct methods
.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/d;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/d;

    sget-object v1, Lcom/google/android/gms/auth/api/credentials/e;->i:Lcom/google/android/gms/auth/api/credentials/e;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/d;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/a/a$a;)V

    return-object v0
.end method
