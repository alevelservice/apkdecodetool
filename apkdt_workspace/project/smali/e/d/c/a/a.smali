.class public final synthetic Le/d/c/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ap/zoloz/hummer/api/IEkycCallback;


# instance fields
.field private final synthetic a:Lg/a/c/a/k$d;


# direct methods
.method public synthetic constructor <init>(Lg/a/c/a/k$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/c/a/a;->a:Lg/a/c/a/k$d;

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/ap/zoloz/hummer/api/EkycResponse;)V
    .locals 1

    iget-object v0, p0, Le/d/c/a/a;->a:Lg/a/c/a/k$d;

    invoke-static {v0, p1}, Le/d/c/a/b;->a(Lg/a/c/a/k$d;Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    return-void
.end method
