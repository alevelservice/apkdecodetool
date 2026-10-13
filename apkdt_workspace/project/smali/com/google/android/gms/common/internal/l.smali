.class public Lcom/google/android/gms/common/internal/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/l$b;,
        Lcom/google/android/gms/common/internal/l$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/l;->a:Lcom/google/android/gms/common/internal/l$b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/h;)Le/i/b/b/d/h;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            ">(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/common/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/z;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/l$a;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/l;)Le/i/b/b/d/h;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            "T:",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;TT;)",
            "Le/i/b/b/d/h<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/x;-><init>(Lcom/google/android/gms/common/api/l;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/l$a;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/l$a;)Le/i/b/b/d/h;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/l$a<",
            "TR;TT;>;)",
            "Le/i/b/b/d/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/l;->a:Lcom/google/android/gms/common/internal/l$b;

    .line 2
    new-instance v1, Le/i/b/b/d/i;

    invoke-direct {v1}, Le/i/b/b/d/i;-><init>()V

    .line 3
    new-instance v2, Lcom/google/android/gms/common/internal/y;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/y;-><init>(Lcom/google/android/gms/common/api/h;Le/i/b/b/d/i;Lcom/google/android/gms/common/internal/l$a;Lcom/google/android/gms/common/internal/l$b;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h$a;)V

    .line 4
    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method
