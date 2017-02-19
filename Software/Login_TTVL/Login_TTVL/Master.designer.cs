﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Login_TTVL
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="TTVL_Login")]
	public partial class MasterDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertLoaiKey(LoaiKey instance);
    partial void UpdateLoaiKey(LoaiKey instance);
    partial void DeleteLoaiKey(LoaiKey instance);
    partial void InsertPC(PC instance);
    partial void UpdatePC(PC instance);
    partial void DeletePC(PC instance);
    partial void InsertKeyPC(KeyPC instance);
    partial void UpdateKeyPC(KeyPC instance);
    partial void DeleteKeyPC(KeyPC instance);
    #endregion
		
		public MasterDataContext() : 
				base(global::Login_TTVL.Properties.Settings.Default.TTVL_LoginConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public MasterDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MasterDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MasterDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MasterDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<LoaiKey> LoaiKeys
		{
			get
			{
				return this.GetTable<LoaiKey>();
			}
		}
		
		public System.Data.Linq.Table<PC> PCs
		{
			get
			{
				return this.GetTable<PC>();
			}
		}
		
		public System.Data.Linq.Table<KeyPC> KeyPCs
		{
			get
			{
				return this.GetTable<KeyPC>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LoaiKey")]
	public partial class LoaiKey : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _RowID;
		
		private string _Loai;
		
		private EntitySet<KeyPC> _KeyPCs;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnRowIDChanging(int value);
    partial void OnRowIDChanged();
    partial void OnLoaiChanging(string value);
    partial void OnLoaiChanged();
    #endregion
		
		public LoaiKey()
		{
			this._KeyPCs = new EntitySet<KeyPC>(new Action<KeyPC>(this.attach_KeyPCs), new Action<KeyPC>(this.detach_KeyPCs));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RowID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int RowID
		{
			get
			{
				return this._RowID;
			}
			set
			{
				if ((this._RowID != value))
				{
					this.OnRowIDChanging(value);
					this.SendPropertyChanging();
					this._RowID = value;
					this.SendPropertyChanged("RowID");
					this.OnRowIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Loai", DbType="NVarChar(50)")]
		public string Loai
		{
			get
			{
				return this._Loai;
			}
			set
			{
				if ((this._Loai != value))
				{
					this.OnLoaiChanging(value);
					this.SendPropertyChanging();
					this._Loai = value;
					this.SendPropertyChanged("Loai");
					this.OnLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LoaiKey_KeyPC", Storage="_KeyPCs", ThisKey="RowID", OtherKey="IDKey")]
		public EntitySet<KeyPC> KeyPCs
		{
			get
			{
				return this._KeyPCs;
			}
			set
			{
				this._KeyPCs.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_KeyPCs(KeyPC entity)
		{
			this.SendPropertyChanging();
			entity.LoaiKey = this;
		}
		
		private void detach_KeyPCs(KeyPC entity)
		{
			this.SendPropertyChanging();
			entity.LoaiKey = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.PC")]
	public partial class PC : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _RowID;
		
		private string _KeyComputer;
		
		private string _TenMay;
		
		private System.Nullable<bool> _Lock;
		
		private System.Nullable<System.DateTime> _NgayKichHoat;
		
		private System.Nullable<System.DateTime> _NgayHetHan;
		
		private string _GhiChu;
		
		private EntityRef<KeyPC> _KeyPC;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnRowIDChanging(int value);
    partial void OnRowIDChanged();
    partial void OnKeyComputerChanging(string value);
    partial void OnKeyComputerChanged();
    partial void OnTenMayChanging(string value);
    partial void OnTenMayChanged();
    partial void OnLockChanging(System.Nullable<bool> value);
    partial void OnLockChanged();
    partial void OnNgayKichHoatChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayKichHoatChanged();
    partial void OnNgayHetHanChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayHetHanChanged();
    partial void OnGhiChuChanging(string value);
    partial void OnGhiChuChanged();
    #endregion
		
		public PC()
		{
			this._KeyPC = default(EntityRef<KeyPC>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RowID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int RowID
		{
			get
			{
				return this._RowID;
			}
			set
			{
				if ((this._RowID != value))
				{
					this.OnRowIDChanging(value);
					this.SendPropertyChanging();
					this._RowID = value;
					this.SendPropertyChanged("RowID");
					this.OnRowIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_KeyComputer", DbType="NVarChar(50)")]
		public string KeyComputer
		{
			get
			{
				return this._KeyComputer;
			}
			set
			{
				if ((this._KeyComputer != value))
				{
					if (this._KeyPC.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnKeyComputerChanging(value);
					this.SendPropertyChanging();
					this._KeyComputer = value;
					this.SendPropertyChanged("KeyComputer");
					this.OnKeyComputerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenMay", DbType="NVarChar(50)")]
		public string TenMay
		{
			get
			{
				return this._TenMay;
			}
			set
			{
				if ((this._TenMay != value))
				{
					this.OnTenMayChanging(value);
					this.SendPropertyChanging();
					this._TenMay = value;
					this.SendPropertyChanged("TenMay");
					this.OnTenMayChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Lock", DbType="Bit")]
		public System.Nullable<bool> Lock
		{
			get
			{
				return this._Lock;
			}
			set
			{
				if ((this._Lock != value))
				{
					this.OnLockChanging(value);
					this.SendPropertyChanging();
					this._Lock = value;
					this.SendPropertyChanged("Lock");
					this.OnLockChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayKichHoat", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayKichHoat
		{
			get
			{
				return this._NgayKichHoat;
			}
			set
			{
				if ((this._NgayKichHoat != value))
				{
					this.OnNgayKichHoatChanging(value);
					this.SendPropertyChanging();
					this._NgayKichHoat = value;
					this.SendPropertyChanged("NgayKichHoat");
					this.OnNgayKichHoatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayHetHan", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayHetHan
		{
			get
			{
				return this._NgayHetHan;
			}
			set
			{
				if ((this._NgayHetHan != value))
				{
					this.OnNgayHetHanChanging(value);
					this.SendPropertyChanging();
					this._NgayHetHan = value;
					this.SendPropertyChanged("NgayHetHan");
					this.OnNgayHetHanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GhiChu", DbType="NVarChar(500)")]
		public string GhiChu
		{
			get
			{
				return this._GhiChu;
			}
			set
			{
				if ((this._GhiChu != value))
				{
					this.OnGhiChuChanging(value);
					this.SendPropertyChanging();
					this._GhiChu = value;
					this.SendPropertyChanged("GhiChu");
					this.OnGhiChuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KeyPC_PC", Storage="_KeyPC", ThisKey="KeyComputer", OtherKey="KeyComputer", IsForeignKey=true)]
		public KeyPC KeyPC
		{
			get
			{
				return this._KeyPC.Entity;
			}
			set
			{
				KeyPC previousValue = this._KeyPC.Entity;
				if (((previousValue != value) 
							|| (this._KeyPC.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._KeyPC.Entity = null;
						previousValue.PCs.Remove(this);
					}
					this._KeyPC.Entity = value;
					if ((value != null))
					{
						value.PCs.Add(this);
						this._KeyComputer = value.KeyComputer;
					}
					else
					{
						this._KeyComputer = default(string);
					}
					this.SendPropertyChanged("KeyPC");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.KeyPC")]
	public partial class KeyPC : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _RowID;
		
		private string _KeyComputer;
		
		private System.Nullable<int> _IDKey;
		
		private System.Nullable<bool> _KichHoat;
		
		private System.Nullable<int> _SoLuong;
		
		private System.Nullable<System.DateTime> _NgayKichHoat;
		
		private System.Nullable<System.DateTime> _NgayHetHan;
		
		private System.Nullable<bool> _Lock;
		
		private string _GhiChu;
		
		private EntitySet<PC> _PCs;
		
		private EntityRef<LoaiKey> _LoaiKey;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnRowIDChanging(int value);
    partial void OnRowIDChanged();
    partial void OnKeyComputerChanging(string value);
    partial void OnKeyComputerChanged();
    partial void OnIDKeyChanging(System.Nullable<int> value);
    partial void OnIDKeyChanged();
    partial void OnKichHoatChanging(System.Nullable<bool> value);
    partial void OnKichHoatChanged();
    partial void OnSoLuongChanging(System.Nullable<int> value);
    partial void OnSoLuongChanged();
    partial void OnNgayKichHoatChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayKichHoatChanged();
    partial void OnNgayHetHanChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayHetHanChanged();
    partial void OnLockChanging(System.Nullable<bool> value);
    partial void OnLockChanged();
    partial void OnGhiChuChanging(string value);
    partial void OnGhiChuChanged();
    #endregion
		
		public KeyPC()
		{
			this._PCs = new EntitySet<PC>(new Action<PC>(this.attach_PCs), new Action<PC>(this.detach_PCs));
			this._LoaiKey = default(EntityRef<LoaiKey>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RowID", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int RowID
		{
			get
			{
				return this._RowID;
			}
			set
			{
				if ((this._RowID != value))
				{
					this.OnRowIDChanging(value);
					this.SendPropertyChanging();
					this._RowID = value;
					this.SendPropertyChanged("RowID");
					this.OnRowIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_KeyComputer", DbType="NVarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string KeyComputer
		{
			get
			{
				return this._KeyComputer;
			}
			set
			{
				if ((this._KeyComputer != value))
				{
					this.OnKeyComputerChanging(value);
					this.SendPropertyChanging();
					this._KeyComputer = value;
					this.SendPropertyChanged("KeyComputer");
					this.OnKeyComputerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IDKey", DbType="Int")]
		public System.Nullable<int> IDKey
		{
			get
			{
				return this._IDKey;
			}
			set
			{
				if ((this._IDKey != value))
				{
					if (this._LoaiKey.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnIDKeyChanging(value);
					this.SendPropertyChanging();
					this._IDKey = value;
					this.SendPropertyChanged("IDKey");
					this.OnIDKeyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_KichHoat", DbType="Bit")]
		public System.Nullable<bool> KichHoat
		{
			get
			{
				return this._KichHoat;
			}
			set
			{
				if ((this._KichHoat != value))
				{
					this.OnKichHoatChanging(value);
					this.SendPropertyChanging();
					this._KichHoat = value;
					this.SendPropertyChanged("KichHoat");
					this.OnKichHoatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuong", DbType="Int")]
		public System.Nullable<int> SoLuong
		{
			get
			{
				return this._SoLuong;
			}
			set
			{
				if ((this._SoLuong != value))
				{
					this.OnSoLuongChanging(value);
					this.SendPropertyChanging();
					this._SoLuong = value;
					this.SendPropertyChanged("SoLuong");
					this.OnSoLuongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayKichHoat", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayKichHoat
		{
			get
			{
				return this._NgayKichHoat;
			}
			set
			{
				if ((this._NgayKichHoat != value))
				{
					this.OnNgayKichHoatChanging(value);
					this.SendPropertyChanging();
					this._NgayKichHoat = value;
					this.SendPropertyChanged("NgayKichHoat");
					this.OnNgayKichHoatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayHetHan", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayHetHan
		{
			get
			{
				return this._NgayHetHan;
			}
			set
			{
				if ((this._NgayHetHan != value))
				{
					this.OnNgayHetHanChanging(value);
					this.SendPropertyChanging();
					this._NgayHetHan = value;
					this.SendPropertyChanged("NgayHetHan");
					this.OnNgayHetHanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Lock", DbType="Bit")]
		public System.Nullable<bool> Lock
		{
			get
			{
				return this._Lock;
			}
			set
			{
				if ((this._Lock != value))
				{
					this.OnLockChanging(value);
					this.SendPropertyChanging();
					this._Lock = value;
					this.SendPropertyChanged("Lock");
					this.OnLockChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GhiChu", DbType="NVarChar(500)")]
		public string GhiChu
		{
			get
			{
				return this._GhiChu;
			}
			set
			{
				if ((this._GhiChu != value))
				{
					this.OnGhiChuChanging(value);
					this.SendPropertyChanging();
					this._GhiChu = value;
					this.SendPropertyChanged("GhiChu");
					this.OnGhiChuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KeyPC_PC", Storage="_PCs", ThisKey="KeyComputer", OtherKey="KeyComputer")]
		public EntitySet<PC> PCs
		{
			get
			{
				return this._PCs;
			}
			set
			{
				this._PCs.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LoaiKey_KeyPC", Storage="_LoaiKey", ThisKey="IDKey", OtherKey="RowID", IsForeignKey=true)]
		public LoaiKey LoaiKey
		{
			get
			{
				return this._LoaiKey.Entity;
			}
			set
			{
				LoaiKey previousValue = this._LoaiKey.Entity;
				if (((previousValue != value) 
							|| (this._LoaiKey.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._LoaiKey.Entity = null;
						previousValue.KeyPCs.Remove(this);
					}
					this._LoaiKey.Entity = value;
					if ((value != null))
					{
						value.KeyPCs.Add(this);
						this._IDKey = value.RowID;
					}
					else
					{
						this._IDKey = default(Nullable<int>);
					}
					this.SendPropertyChanged("LoaiKey");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_PCs(PC entity)
		{
			this.SendPropertyChanging();
			entity.KeyPC = this;
		}
		
		private void detach_PCs(PC entity)
		{
			this.SendPropertyChanging();
			entity.KeyPC = null;
		}
	}
}
#pragma warning restore 1591