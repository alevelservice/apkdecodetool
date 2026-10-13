.class public final synthetic Lg/c/a/c/b;
.super Ljava/lang/Object;
.source "Disposable.java"


# direct methods
.method public static a()Lg/c/a/c/c;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 3
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)Lg/c/a/c/c;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lg/c/a/c/f;

    invoke-direct {v0, p0}, Lg/c/a/c/f;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
