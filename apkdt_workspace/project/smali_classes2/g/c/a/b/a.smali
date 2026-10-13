.class public interface abstract Lg/c/a/b/a;
.super Ljava/lang/Object;
.source "CompletableObserver.java"


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSubscribe(Lg/c/a/c/c;)V
    .param p1    # Lg/c/a/c/c;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
.end method
