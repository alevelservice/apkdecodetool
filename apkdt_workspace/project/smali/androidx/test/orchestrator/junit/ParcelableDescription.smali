.class public final Landroidx/test/orchestrator/junit/ParcelableDescription;
.super Ljava/lang/Object;
.source "ParcelableDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableDescription$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableDescription$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->e:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->f:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableDescription$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
