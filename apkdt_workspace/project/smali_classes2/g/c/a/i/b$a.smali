.class final Lg/c/a/i/b$a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lg/c/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/c/a/f/g/b;

    invoke-direct {v0}, Lg/c/a/f/g/b;-><init>()V

    sput-object v0, Lg/c/a/i/b$a;->a:Lg/c/a/b/g;

    return-void
.end method
